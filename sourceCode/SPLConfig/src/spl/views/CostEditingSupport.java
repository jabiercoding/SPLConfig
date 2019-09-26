package spl.views;

import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.EditingSupport;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.TextCellEditor;

import spl.model.Feature;

public class CostEditingSupport extends EditingSupport {

	private final TableViewer viewer;
	private final CellEditor editor;

	public CostEditingSupport(TableViewer viewer) {
		super(viewer);
		this.viewer = viewer;
		this.editor = new TextCellEditor(viewer.getTable());
	}

	@Override
	protected CellEditor getCellEditor(Object element) {
		return editor;
	}

	@Override
	protected boolean canEdit(Object element) {
		return true;
	}

	@Override
	protected Object getValue(Object element) {
		Feature feat;
		feat = (Feature) element;
		return String.valueOf(feat.getCost());
	}

	@Override
	protected void setValue(Object element, Object value) {
		if (!String.valueOf(value).equals(""))
			((Feature) element).setCost(Double.valueOf(String.valueOf(value)));
		viewer.update(element, null);
	}
}
