package spl.views;

import java.io.ByteArrayInputStream;
//import java.io.File;
//import java.io.FileWriter;
//import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnLabelProvider;
import org.eclipse.jface.viewers.ComboBoxCellEditor;
import org.eclipse.jface.viewers.EditingSupport;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.TableViewerColumn;
import org.eclipse.jface.viewers.TextCellEditor;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IFileEditorInput;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.part.ViewPart;

import spl.io.*;
import spl.model.FM;
import spl.model.Feature;
import spl.solver.GreedyHeuristic;
import de.ovgu.featureide.fm.ui.editors.FeatureModelEditor;

public class FeatureModelOptionsView extends ViewPart {

	/**
	 * The ID of the view as specified by the extension.
	 */
	public static final String ID = "spl.views.FeatureModelOptionsView";

	public static final Image REFRESH_TAB_IMAGE = ImageDescriptor
			.createFromURL(
					FileLocator.find(Platform.getBundle("SPL"), new Path(
							"icons/refresh_tab.gif"), null)).createImage();
	public static final Image RUN = ImageDescriptor.createFromURL(
			FileLocator.find(Platform.getBundle("SPL"), new Path(
					"icons/lrun_obj.gif"), null)).createImage();

	public static final Image SAVE = ImageDescriptor.createFromURL(
			FileLocator.find(Platform.getBundle("SPL"), new Path(
					"icons/save_edit.gif"), null)).createImage();

	private TableViewer viewer;
	private Table table;
	private FeatureModelEditor featureModelEditor;
	private FM fm = new FM();
	private LinkedList<String> clientsConfigs = new LinkedList<String>();
	private String client = "";

	private Text budgetText;
	private Combo clientText;

	private SPLConfigProperties prop = new SPLConfigProperties();
	private FolderAndFiles faf;
	
	private IProject project;
	private IFolder configsFolder;
	private IFolder SPLConfig;
	
	private IFile company;
	private IFile cli;
	private IFile benefits;
	private IFile config;

	private Action refresh;
	private Action run;
	private Action save;
	
	private GreedyHeuristic algorithm;

	private String[] BENEFIT_VALUES = { "None", "Very Low", "Low", "Medium", "High", "Very High" };
	
	class ArrayContentProvider implements IStructuredContentProvider {
		@Override
		public void inputChanged(Viewer v, Object oldInput, Object newInput) {
		}

		@Override
		public void dispose() {
		}

		@Override
		public Object[] getElements(Object parent) {

			project = null;

			IEditorPart editorPart = getSite().getWorkbenchWindow()
					.getActivePage().getActiveEditor();

			if (editorPart != null) {
				IFileEditorInput input = (IFileEditorInput) editorPart
						.getEditorInput();
				IFile file = input.getFile();
				project = file.getProject();
			}

			if (featureModelEditor != null) {
				SPLConfig = project.getFolder("SPLConfig");
				
				XML xml = new XML();
				try {
					fm.setFeatures(xml.read(project));
				} catch (CoreException e) {
					e.printStackTrace();
				}
				fm.setFeaturesGroups();
				
				faf = new FolderAndFiles(SPLConfig, fm);
				
				try {
					
					faf.Initialize();
				
					company = SPLConfig.getFile("company.txt");

					company.refreshLocal(IResource.DEPTH_INFINITE, null);
					fm.setFeatures(prop.getFeatureCosts(fm.getFeatures(),company));
		
					clientsConfigs.clear();
					clientsConfigs.add("");
					for (IResource r : SPLConfig.members())
						if (r.getName().indexOf(".cli") != -1)
							clientsConfigs.add(r.getName().split(".cli")[0]);
		
					clientText.setItems(clientsConfigs
							.toArray(new String[clientsConfigs.size()]));
		
					cli = SPLConfig.getFile(client + ".cli");
		
					if (!cli.exists()) {
						for (Feature f : fm.getFeatures())
							f.setBenefit(3);
						
						budgetText.setText("");
						clientText.setText(clientsConfigs.size()>0?clientsConfigs.get(0):"");
					} else {
						clientText.setText(client);
						cli.refreshLocal(IResource.DEPTH_INFINITE, null);
						fm.setFeatures(prop.getFeatureBenefits(fm.getFeatures(),
									cli));
						budgetText.setText(Double.toString(prop.getBudget(cli)));
					}						
	
				} catch (CoreException e) {
					e.printStackTrace();
				}

			} else {
				budgetText.setText("");
				return new String[] {};
			}

			return fm.getNonMandatoryFeatures().toArray();
		}
	}

	public FeatureModelOptionsView() {
		this.setPartName("Product Configuration");
	}

	private IPartListener editorListener = new IPartListener() {

		@Override
		public void partOpened(IWorkbenchPart part) {
			if (part == featureModelEditor) {
				setFeatureModelEditor(null);
				fm.getFeatures().clear();
				if (viewer != null && !viewer.getControl().isDisposed())
					viewer.refresh();
			}
		}

		@Override
		public void partDeactivated(IWorkbenchPart part) {
		}

		@Override
		public void partClosed(IWorkbenchPart part) {
			if (part == featureModelEditor) {
				setFeatureModelEditor(null);
				fm.getFeatures().clear();
				if (viewer != null && !viewer.getControl().isDisposed())
					viewer.refresh();
			}
		}

		@Override
		public void partBroughtToTop(IWorkbenchPart part) {
			if (part instanceof IEditorPart) {
				setFeatureModelEditor(part);
				fm.getFeatures().clear();
				if (viewer != null && !viewer.getControl().isDisposed())
					viewer.refresh();
			}
		}

		@Override
		public void partActivated(IWorkbenchPart part) {
			if (part instanceof IEditorPart) {
				setFeatureModelEditor(part);
				fm.getFeatures().clear();
				if (viewer != null && !viewer.getControl().isDisposed())
					viewer.refresh();
			}
		}

	};

	@Override
	public void createPartControl(Composite parent) {
		GridLayout layout = new GridLayout(2, false);
		parent.setLayout(layout);
		Label budgetLabel = new Label(parent, SWT.NONE);
		budgetLabel.setText("Budget: ");

		budgetText = new Text(parent, SWT.BORDER | SWT.SEARCH);
		budgetText.setLayoutData(new GridData(GridData.GRAB_HORIZONTAL
				| GridData.HORIZONTAL_ALIGN_FILL));

		Label clientLabel = new Label(parent, SWT.NONE);
		clientLabel.setText("Customer Config: ");

		clientText = new Combo(parent, SWT.BORDER);
		clientText.setLayoutData(new GridData(GridData.GRAB_HORIZONTAL
				| GridData.HORIZONTAL_ALIGN_FILL));
		clientText.addSelectionListener(new SelectionListener() {

			@Override
			public void widgetSelected(SelectionEvent e) {
				Combo t = (Combo) e.widget;
				client = t.getText();
				viewer.refresh();
			}

			@Override
			public void widgetDefaultSelected(SelectionEvent e) {
				viewer.refresh();
			}
			
		});

		viewer = new TableViewer(parent);

		createTable();
		createViewer();

		viewer.setContentProvider(new ArrayContentProvider());

		viewer.setInput(fm.getNonMandatoryFeatures());

		getSite().getPage().addPartListener(editorListener);
		IWorkbenchPage page = getSite().getPage();
		makeActions();
		fillLocalToolBar(getViewSite().getActionBars().getToolBarManager());
		setFeatureModelEditor(page.getActiveEditor());
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
		column.getColumn().setText("Feature");
		column.getColumn().setWidth(200);
		column.setLabelProvider(new ColumnLabelProvider() {
			@Override
			public String getText(Object element) {
				Feature p = (Feature) element;
				return p.getName();
			}
		});

		column = new TableViewerColumn(viewer, SWT.LEFT, 1);
		column.getColumn().setText("Benefit");
		column.getColumn().setWidth(200);
		column.setLabelProvider(new ColumnLabelProvider() {
			@Override
			public String getText(Object element) {
				Feature p = (Feature) element;
				return BENEFIT_VALUES[(int)p.getBenefit()];
			}
		});
		
		column.setEditingSupport(new EditingSupport(viewer) {
			protected CellEditor getCellEditor(Object element) {
				return new ComboBoxCellEditor(viewer.getTable(), BENEFIT_VALUES, SWT.READ_ONLY);
			}

			protected boolean canEdit(Object element) {
				return true;
			}

			protected Object getValue(Object element) {
				Feature feature = (Feature) element;
				return (int)feature.getBenefit();

			}

			protected void setValue(Object element, Object value) {
				Feature feature = (Feature) element;
				Feature featOld = null;
				int i = 0;
				int val = (Integer) value;
				feature.setBenefit(val);

				for (Feature f : fm.getFeatures()) {
					if (f.getName().equals(feature.getName())) {
						featOld = fm.getFeatures().remove(i);
						break;
					}
					i++;
				}

				featOld.setBenefit(val);
				if (featOld != null)
					fm.getFeatures().add(featOld);

				viewer.update(element, null);
			}
		});

		column = new TableViewerColumn(viewer, SWT.LEFT, 2);
		column.getColumn().setText("Cost");
		column.getColumn().setWidth(200);
		column.setLabelProvider(new ColumnLabelProvider() {
			@Override
			public String getText(Object element) {
				Feature p = (Feature) element;
				return String.valueOf(p.getCost());
			}
		});
	}

	private void createViewer() {

		CellEditor[] editors = new CellEditor[3];

		// Column 1 : Feature
		TextCellEditor textEditor = new TextCellEditor(table);
		((Text) textEditor.getControl()).setTextLimit(60);
		editors[0] = textEditor;

		// Column 2 : Benefit
		editors[1] = new ComboBoxCellEditor(table, new String[] { "0", "1", "2", "3", "4", "5" }, SWT.READ_ONLY);

		// Column 3 : Cost
		textEditor = new TextCellEditor(table);
		editors[2] = textEditor;

		// Assign the cell editors to the viewer
		viewer.setCellEditors(editors);

		// Layout the viewer
		GridData gridData = new GridData();
		gridData.verticalAlignment = GridData.FILL;
		gridData.horizontalSpan = 2;
		gridData.grabExcessHorizontalSpace = false;
		gridData.grabExcessVerticalSpace = true;
		gridData.horizontalAlignment = GridData.FILL;
		viewer.getControl().setLayoutData(gridData);
	}

	private void fillLocalToolBar(IToolBarManager manager) {
		manager.add(save);
		save.setImageDescriptor(ImageDescriptor.createFromImage(SAVE));

		manager.add(refresh);
		refresh.setImageDescriptor(ImageDescriptor.createFromImage(REFRESH_TAB_IMAGE));

		manager.add(run);
		run.setImageDescriptor(ImageDescriptor.createFromImage(RUN));
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
		refresh.setImageDescriptor(ImageDescriptor.createFromImage(REFRESH_TAB_IMAGE));

		run = new Action() {
			@Override
			public void run() {

				if (client != "") {
					algorithm = new GreedyHeuristic(fm, budgetText.getText());
					
					viewer.refresh();
					
					if(algorithm.getResult().isEmpty())
						showMessage("There is not enough budget!");
					else {
						
						configsFolder = SPLConfig.getFolder("configs");
						
						if (!configsFolder.exists()) {
							try {
								configsFolder.create(false, true, null);
							} catch (CoreException e) {
								e.printStackTrace();
							}
						}
		
						String cliConfig = client + ".config";
						config = configsFolder.getFile(cliConfig);
						
						StringBuffer contents = new StringBuffer();
						
						for (String feature : algorithm.getResult())
							contents.append(feature + "\n");
						
						InputStream input = new ByteArrayInputStream(contents.toString().getBytes());
						try {
							if (!config.exists())
								config.create(input, false, null);
							else
								config.setContents(input, false, false, null);
						} catch (CoreException e) {
							e.printStackTrace();
						}
						
						try {
							config.refreshLocal(IResource.DEPTH_INFINITE, null);
						} catch (CoreException e) {
							e.printStackTrace();
						}
						
						/* Set the final benefit for the client */
						benefits = configsFolder.getFile("configs.txt");
						if (!benefits.exists()) {
							input = new ByteArrayInputStream("".toString().getBytes());
							try {
								benefits.create(input, true, null);
							} catch (CoreException e) {
								e.printStackTrace();
							}
						}
						
						prop.setFinalBenefit(benefits, client, algorithm.getBenefit());
						
						/* File result */
						/*FileWriter arquivo;  
				        try {  
				            arquivo = new FileWriter(new File("C:\\programs\\runtime-EclipseApplication\\" + client + "\\SPLConfig\\configs\\result.txt"));  
				            arquivo.write(algorithm.getStringResult());
				            arquivo.close(); 
				        } catch (IOException e) {  
				            e.printStackTrace();  
				        } catch (Exception e) {  
				            e.printStackTrace();  
				        } */
					}
	
					try {
						PlatformUI
								.getWorkbench()
								.getActiveWorkbenchWindow()
								.getActivePage()
								.showView("spl.views.FeatureModelConfigurationView");
					} catch (PartInitException e) {
						e.printStackTrace();
					}
					
				}
				else
					showMessage("Please select a client.");
				
				
			}
		};
		run.setText("Run");
		run.setToolTipText("Run calculations");
		run.setImageDescriptor(ImageDescriptor.createFromImage(RUN));

		save = new Action() {
			@Override
			public void run() {
				try {
					faf.Initialize();
				} catch (CoreException e1) {
					e1.printStackTrace();
				}
				
				if (clientText.getText().isEmpty())
					showMessage("Please inform a valid name for the customer's file.");
				else {
					cli = SPLConfig.getFile(clientText.getText() + ".cli");
					if (!cli.exists()) {
						InputStream input = new ByteArrayInputStream("".toString().getBytes());
						try {
							cli.create(input, true, null);
						} catch (CoreException e) {
							e.printStackTrace();
						}
					}
	
					prop.setBenefit(fm.getNonMandatoryFeatures(), cli);
	
					if (!budgetText.getText().isEmpty())
						prop.setBudget(cli, Double.parseDouble(budgetText.getText()));
					else
						prop.setBudget(cli, 0);
	
					try {
						cli.refreshLocal(IResource.DEPTH_INFINITE, null);
					} catch (CoreException e) {
						e.printStackTrace();
					}
	
					showMessage("Information saved to customer's file.");
				}
			}
		};
		save.setText("Save");
		save.setToolTipText("Save client configuration");
		save.setImageDescriptor(ImageDescriptor.createFromImage(SAVE));
		
		viewer.refresh();
	}

	private void showMessage(String message) {
		MessageDialog.openInformation(viewer.getControl().getShell(),
				"Product Configuration", message);
	}

	public void setFeatureModelEditor(IWorkbenchPart activeEditor) {
		if (featureModelEditor != null && featureModelEditor == activeEditor) {
			return;
		}

		if (featureModelEditor != null) {
			featureModelEditor = null;
		}

		if (activeEditor instanceof FeatureModelEditor) {
			featureModelEditor = (FeatureModelEditor) activeEditor;
		}

	}

	public String getProjectPath(IEditorPart part) {
		IEditorPart editorPart = part.getSite().getWorkbenchWindow()
				.getActivePage().getActiveEditor();
		IFileEditorInput input = (IFileEditorInput) editorPart.getEditorInput();
		IFile file = input.getFile();
		IProject activeProject = file.getProject();
		String activeProjectName = activeProject.getLocation().toString();
		return activeProjectName;
	}

	@Override
	public void setFocus() {
		viewer.getControl().setFocus();
	}
	
}