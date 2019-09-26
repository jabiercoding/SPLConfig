package spl.io;

import java.io.IOException;
import java.util.LinkedList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import spl.model.Feature;

public class XML {

	public LinkedList<Feature> Read(IProject project) throws CoreException {

		try {
			String filepath = "model.xml";
			DocumentBuilderFactory docFactory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
			IFile model = project.getFile(filepath);
			Document doc = docBuilder.parse(model.getContents());
			NodeList elementos = doc.getElementsByTagName("*");
			
			LinkedList<Feature> features = new LinkedList<Feature>();
			for (int i = 0; i < elementos.getLength(); i++) {
				NamedNodeMap attr = elementos.item(i).getAttributes();
				Node name = attr.getNamedItem("name");
				Node mandatory = attr.getNamedItem("mandatory");
				Node father = elementos.item(i).getParentNode();
				Node fatherName = null;
				if (name != null) {
					Feature feature = new Feature();
					feature.setName(name.getNodeValue());
					if (mandatory != null) {
						if (father.getNodeName().equals("alt") || father.getNodeName().equals("or"))
							mandatory.setNodeValue("false");
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

		} catch (ParserConfigurationException pce) {
			pce.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		} catch (SAXException sae) {
			sae.printStackTrace();
		}
		return null;
	}
}