package spl.io;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.runtime.CoreException;

import spl.model.FM;
import spl.model.Feature;

public class FolderAndFiles {

	private IFolder SPLConfigFolder;
	private IFile company;
	private FM fm = new FM();
	
	public FolderAndFiles(IFolder SPLConfig, FM fm){
		this.SPLConfigFolder = SPLConfig;
		this.fm = fm;
		company = SPLConfigFolder.getFile("company.txt");
	}
	
	public void Initialize() throws CoreException{
		if (!SPLConfigFolder.exists())
			createSPLConfigFolder();
		if (!company.exists())
			createCompanyFile();
	}
	
	public void createSPLConfigFolder() throws CoreException{
		SPLConfigFolder.create(false, true, null);
		createCompanyFile();
	}
	
	public void createCompanyFile() throws CoreException{
		StringBuffer contents = new StringBuffer();
		for (Feature f : fm.getFeatures())
			contents.append(f.getName() + "=" + "0\n");

			InputStream input = new ByteArrayInputStream(contents.toString().getBytes());

			company.create(input, false, null);
	}
	
}
