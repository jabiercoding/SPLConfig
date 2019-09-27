package spl.views;

import java.text.DecimalFormat;
import java.util.LinkedList;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Table;
import org.eclipse.ui.part.*;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.*;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.jface.action.*;
//import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.ui.*;
//import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.SWT;

import spl.io.SPLConfigProperties;
import de.ovgu.featureide.fm.ui.editors.FeatureModelEditor;

public class FeatureModelConfigurationView extends ViewPart {

	/**
	 * The ID of the view as specified by the extension.
	 */
	public static final String ID = "spl.views.FeatureModelConfigurationView";
	
	public static final Image REFRESH_TAB_IMAGE = ImageDescriptor
			.createFromURL(
					FileLocator.find(Platform.getBundle("SPL"), new Path(
							"icons/refresh_tab.gif"), null)).createImage();

	private TableViewer viewer;
	private Table table;
	private Action refresh;
	private Action doubleClickAction;

	private IProject project;
	private IFolder configsFolder;
	private IFile benefits;
	
	private LinkedList<String> configsList;
	
	private SPLConfigProperties prop = new SPLConfigProperties();

	/*
	 * The content provider class is responsible for providing objects to the
	 * view. It can wrap existing objects in adapters or simply return objects
	 * as-is. These objects may be sensitive to the current input of the view,
	 * or ignore it and always show the same content (like Task List, for
	 * example).
	 */

	class ViewContentProvider implements IStructuredContentProvider {
		@Override
		public void inputChanged(Viewer v, Object oldInput, Object newInput) {
		}

		@Override
		public void dispose() {
		}

		@Override
		public Object[] getElements(Object parent) {

			project = null;
			if (configsList!=null)
				configsList.clear();
			else
				configsList = new LinkedList<String>();

			IEditorPart editorPart = getSite().getWorkbenchWindow()
					.getActivePage().getActiveEditor();

			if (editorPart != null) {
				IFileEditorInput input = (IFileEditorInput) editorPart
						.getEditorInput();
				IFile file = input.getFile();
				project = file.getProject();
				
				IFolder configSPL = project.getFolder("SPLConfig");
				configsFolder = configSPL.getFolder("configs");

				try {

					if (configsFolder.exists()) {
						for (IResource r : configsFolder.members()) {
							if (r.getName().indexOf(".config") != -1)
								configsList.add(r.getName());
						}
					} else {
						configsList = new LinkedList<String>();
					}

				} catch (CoreException e) {
					e.printStackTrace();
				}
			} else {
				return new String[] {};
			}
			
			return configsList.toArray();
		}
	}

	/**
	 * The constructor.
	 */
	public FeatureModelConfigurationView() {
	}

	private IPartListener editorListener = new IPartListener() {

		@Override
		public void partOpened(IWorkbenchPart part) {
		}

		@Override
		public void partDeactivated(IWorkbenchPart part) {
		}

		@Override
		public void partClosed(IWorkbenchPart part) {
			configsList.clear();
		}

		@Override
		public void partBroughtToTop(IWorkbenchPart part) {
			if (part instanceof FeatureModelEditor) {
				configsList.clear();
				if (viewer != null && !viewer.getControl().isDisposed())
					viewer.refresh();
			}
		}

		@Override
		public void partActivated(IWorkbenchPart part) {
			if (part instanceof FeatureModelEditor) {
				configsList.clear();
				if (viewer != null && !viewer.getControl().isDisposed())
					viewer.refresh();
			}
		}

	};

	/**
	 * This is a callback that will allow us to create the viewer and initialize it.
	 */
	@Override
	public void createPartControl(Composite parent) {
		viewer = new TableViewer(parent);
		viewer.setContentProvider(new ViewContentProvider());

		viewer.setInput(getViewSite());
		
		createTable();

		// Create the help context id for the viewer's control
		PlatformUI.getWorkbench().getHelpSystem().setHelp(viewer.getControl(), "SPL2.viewer");
		
		getSite().getPage().addPartListener(editorListener);
		makeActions();
		fillLocalToolBar(getViewSite().getActionBars().getToolBarManager());
		hookDoubleClickAction();
	}

	private void createTable() {

		table = viewer.getTable();

		GridData gridData = new GridData(GridData.FILL_BOTH);
		gridData.grabExcessVerticalSpace = true;
		gridData.horizontalSpan = 3;
		table.setLayoutData(gridData);

		table.setLinesVisible(true);
		table.setHeaderVisible(true);

		TableViewerColumn column = new TableViewerColumn(viewer, SWT.LEFT, 0);
		column.getColumn().setText("Configuration");
		column.getColumn().setWidth(300);
		column.setLabelProvider(new ColumnLabelProvider() {
			@Override
			public String getText(Object element) {
				String p =  element.toString();
				return p;
			}
		});

		column = new TableViewerColumn(viewer, SWT.LEFT, 1);
		//column.getColumn().setText("Cost-benefit");
		column.getColumn().setText("Total Cost");
		column.getColumn().setWidth(200);
		column.setLabelProvider(new ColumnLabelProvider() {
			@Override
			public String getText(Object element) {
				benefits = configsFolder.getFile("configs.txt");
				if (!benefits.exists())
					return "The total benefit was not calculated.";
				else {
					double benefitValue = prop.getFinalBenefit(benefits, element.toString().split(".config")[0]);
					
					DecimalFormat df = new DecimalFormat("0.00");  
					
					if(benefitValue < 0)
						return "The total benefit was not calculated.";
					else
						//return String.valueOf(df.format(benefitValue) + "%");
						return String.valueOf(df.format(benefitValue));
				}
			}
		});
		
	}

	private void fillLocalToolBar(IToolBarManager manager) {
		manager.add(refresh);
		refresh.setImageDescriptor(ImageDescriptor
				.createFromImage(REFRESH_TAB_IMAGE));
	}

	private void makeActions() {
		
		refresh = new Action() {
			@Override
			public void run() {
				viewer.refresh();
			}
		};
		refresh.setText("Refresh");
		refresh.setToolTipText("Refresh the features' table");
		refresh.setImageDescriptor(ImageDescriptor
				.createFromImage(REFRESH_TAB_IMAGE));

		
		doubleClickAction = new Action() {
			@Override
			public void run() {
				ISelection selection = viewer.getSelection();
				Object obj = ((IStructuredSelection) selection)
						.getFirstElement();
				IFile config = configsFolder.getFile(obj.toString());

				IEditorInput editorInput = new FileEditorInput(config);
				IWorkbenchWindow window = PlatformUI.getWorkbench()
						.getActiveWorkbenchWindow();
				IWorkbenchPage page = window.getActivePage();

				try {
					page.openEditor(editorInput,
							"de.ovgu.featureide.fm.ui.editors.configuration.ConfigurationEditor");
				} catch (PartInitException e) {
					e.printStackTrace();
				}
			}
		};
	}

	private void hookDoubleClickAction() {
		viewer.addDoubleClickListener(new IDoubleClickListener() {
			@Override
			public void doubleClick(DoubleClickEvent event) {
				doubleClickAction.run();
			}
		});
	}

	/**
	 * Passing the focus request to the viewer's control.
	 */
	@Override
	public void setFocus() {
		viewer.getControl().setFocus();
	}
}