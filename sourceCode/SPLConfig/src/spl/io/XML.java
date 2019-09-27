package spl.io;

import java.io.InputStream;
import java.util.LinkedList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

import spl.model.Feature;

public class XML {

	public LinkedList<Feature> read(IProject project) throws CoreException {
		try {
			String filepath = "model.xml";
			IFile model = project.getFile(filepath);
			return read(model.getContents());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public LinkedList<Feature> read(InputStream inputStream) throws Exception {
		DocumentBuilderFactory docFactory = DocumentBuilderFactory
				.newInstance();
		DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
		Document doc = docBuilder.parse(inputStream);
		NodeList elementos = doc.getElementsByTagName("*");
		
		LinkedList<Feature> features = new LinkedList<Feature>();
		for (int i = 0; i < elementos.getLength(); i++) {
			Node currentNode = elementos.item(i);
			NamedNodeMap attr = currentNode.getAttributes();
			Node name = attr.getNamedItem("name");
			Node mandatory = attr.getNamedItem("mandatory");
			Node father = currentNode.getParentNode();
			Node fatherName = null;

			if (name != null) {
				Feature feature = new Feature();
				feature.setName(name.getNodeValue());
				if (mandatory != null) {
					if (father.getNodeName().equals("alt") || father.getNodeName().equals("or")) {
						// if father is alt or or we still check if it only has one child
						int childNumber = 0;
						for(int x=0; x<father.getChildNodes().getLength(); x++) {
							Node node = father.getChildNodes().item(x);
							if(!(node instanceof Text)) {
								childNumber++;
							}
							if(childNumber > 1) {
								break;
							}
						}
						if(childNumber > 1) {
							mandatory.setNodeValue("false");
						}
					}
					feature.setMandatory(Boolean.parseBoolean(mandatory
							.getNodeValue()));
				}
				feature.setBenefit(3);
				feature.setCost(0);
				switch(father.getNodeName()){	
					case "or":
						feature.setAlt(1);
						break;
					case "alt":
						feature.setAlt(2);
						break;
					default:
						feature.setAlt(0);
				}
				if (father != null) fatherName = father.getAttributes().getNamedItem("name");
				if (fatherName != null) feature.setFather(fatherName.getNodeValue());
				if (!father.getNodeName().equals("featureOrder"))
					features.add(feature);
			}
		}
		return features;
	}
	
}