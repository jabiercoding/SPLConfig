package spl.solver;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.Properties;

import spl.io.XML;
import spl.model.FM;
import spl.model.Feature;

/**
 * Main methods to programmatically use the greedy heuristic
 * 
 * @author jabier.martinez
 */
public class GreedyHeuristicMain {

	public static void main(String[] args) {
		String fmXmlPath = args[0];
		String cliPath = args[1];
		String companyTxtPath = args[2];
		launch(fmXmlPath, cliPath, companyTxtPath);
	}

	public static void launch(String fmXmlPath, String cliPath, String companyTxtPath) {
		try {
			
			// Load feature costs
			InputStream costsInputStream = new FileInputStream(companyTxtPath);
			Properties costProperties = new Properties();
			costProperties.load(costsInputStream);

			// Load feature benefits
			InputStream benefitsInputStream = new FileInputStream(cliPath);
			Properties benefitProperties = new Properties();
			benefitProperties.load(benefitsInputStream);
			String budgetString = benefitProperties.getProperty("budget-SPLConfig");
			Double costBudget = Double.parseDouble(budgetString);
			
			launch(fmXmlPath, costProperties, benefitProperties, costBudget);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void launch(String fmXmlPath, Properties costProperties, Properties benefitProperties,
			Double costBudget) {
		try {
			// Load feature model
			InputStream fmXmlInputStream = new FileInputStream(fmXmlPath);
			launch(fmXmlInputStream, costProperties, benefitProperties, costBudget);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void launch(InputStream fmXmlInputStream, Properties costProperties, Properties benefitProperties,
			Double costBudget) {
		try {
			XML xml = new XML();
			LinkedList<Feature> features = xml.read(fmXmlInputStream);
			FM fm = new FM();
			fm.setFeatures(features);
			fm.setFeaturesGroups();
			launch(fm, costProperties, benefitProperties, costBudget);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void launch(FM fm, Properties costProperties, Properties benefitProperties,
			Double costBudget) {
		try {
			
			for (Feature f : fm.getFeatures()) {
				String cost = costProperties.getProperty(f.getName());
				String benefit = benefitProperties.getProperty(f.getName());
				if (cost != null) {
					f.setCost(Double.parseDouble(cost));
				}
				if (benefit != null) {
					f.setBenefit(Double.parseDouble(benefit));
				}
			}
			
			GreedyHeuristic greedyHeuristic = new GreedyHeuristic(fm, costBudget.toString());
			System.out.println(greedyHeuristic.getStringResult());

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
