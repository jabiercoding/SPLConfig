package spl.views;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnLabelProvider;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.TableViewerColumn;
import org.eclipse.jface.viewers.TextCellEditor;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.dialogs.PropertyPage;

import spl.io.FolderAndFiles;
import spl.io.SPLConfigProperties;
import spl.io.XML;
import spl.model.FM;
import spl.model.Feature;
import de.ovgu.featureide.fm.ui.editors.FeatureModelEditor;

@SuppressWarnings("restriction")
public class ProjectPropertyPage extends PropertyPage {

	private IProject project;
	private Table table;
	private TableViewer viewer;
	private FM fm = new FM();
	private FeatureModelEditor featureModelEditor;
	private SPLConfigProperties prop = new SPLConfigProperties();
	private IFile company;

	class ArrayContentProvider implements IStructuredContentProvider {
	
		@Override
		public void inputChanged(Viewer v, Object oldInput, Object newInput) {
		}

		@Override
		public void dispose() {
		}

		@Override
		public Object[] getElements(Object parent) {
			XML xml = new XML();
			IFolder SPLConfig = project.getFolder("SPLConfig");
			FolderAndFiles faf = new FolderAndFiles(SPLConfig, fm);
			
			try{
				faf.Initialize();
				company = SPLConfig.getFile("company.txt");
				fm.setFeatures(xml.Read(project));
				fm.setFeatures(prop.getFeatureCosts(fm.getFeatures(), company));
			} catch (CoreException e) {
				e.printStackTrace();
			}

			return fm.getFeatures().toArray();
		}
	}
	
	@Override
	protected void performApply(){
		prop.setCost(fm.getFeatures(), company);
	}
	
	@Override
	protected void performDefaults(){
		viewer.refresh();
	}

	@Override
	protected Control createContents(Composite parent) {
		Composite composite = new Composite(parent, SWT.NULL);
		GridLayout layout = new GridLayout(2, false);
		composite.setLayout(layout);

		if (!getProject()) {
			Label label = new Label(composite, SWT.NULL);
			label.setText("No resource selected");
			return null;
		}
		Label label = new Label(composite, SWT.NULL);
		label.setText("&Project: " + project.getName());

		viewer = new TableViewer(parent);

		createTable();
		createViewer();

		viewer.setContentProvider(new ArrayContentProvider());

		viewer.setInput(fm.getFeatures());

		return composite;
	}

	/**
	 * Gets the project of the selected resource. 
	 * @return <code>true</code> if successful
	 */
	private boolean getProject() {
		IAdaptable resource = getElement();
		if (resource instanceof JavaElement) {
			IJavaProject javaProject = ((JavaElement) resource).getJavaProject();
			project = javaProject.getProject();
		} else if (resource instanceof IResource) {
			project = ((IResource) resource).getProject();
		} else {
			return false;
		}
		return true;
	}

	private void createTable() {

		table = viewer.getTable();

		GridData gridData = new GridData(GridData.FILL_BOTH);
		gridData.grabExcessVerticalSpace = true;
		gridData.horizontalSpan = 1;
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
				return String.valueOf(p.getName());
			}
		});

		column = new TableViewerColumn(viewer, SWT.LEFT, 1);
		column.getColumn().setText("Cost");
		column.getColumn().setWidth(200);
		column.setLabelProvider(new ColumnLabelProvider() {
			@Override
			public String getText(Object element) {
				Feature p = (Feature) element;
				return String.valueOf(p.getCost());
			}
		});
		CostEditingSupport edit = new CostEditingSupport(viewer);
		column.setEditingSupport(edit);
	}

	private void createViewer() {

		CellEditor[] editors = new CellEditor[2];

		// Column 1 : Feature
		TextCellEditor textEditor = new TextCellEditor(table);
		((Text) textEditor.getControl()).setTextLimit(60);
		editors[0] = textEditor;

		// Column 2 : Cost
		textEditor = new TextCellEditor(table);
		editors[1] = textEditor;

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

}