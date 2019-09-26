package spl.io;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Properties;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;

import spl.model.Feature;

public class SPLConfigProperties{

	public LinkedList<Feature> getFeatureCosts(List<Feature> features, IFile company) {
		Properties costs = new Properties();
		LinkedList<Feature> newFeatures = new LinkedList<Feature>();

		try {
			
			costs.load(company.getContents());
			for (Feature f : features) {
				String aux = costs.getProperty(f.getName());
				if (aux != null) {
					f.setCost(Double.parseDouble(aux));
				} else {
					f.setCost(0);
				}
				newFeatures.add(f);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (CoreException c) {
			c.printStackTrace();
		}

		return newFeatures;
	}

	public LinkedList<Feature> getFeatureBenefits(List<Feature> features, IFile client) {
		Properties profit = new Properties();
		LinkedList<Feature> newFeatures = new LinkedList<Feature>();

		try {
			
			profit.load(client.getContents());
			for (Feature f : features) {
				String aux = profit.getProperty(f.getName());
				if (aux != null) {
					f.setBenefit(Double.parseDouble(aux));
				} else {
					f.setBenefit(0);
				}
				newFeatures.add(f);
			}

		} catch (IOException e) {
			e.printStackTrace();
		} catch (CoreException c) {
			c.printStackTrace();
		}

		return newFeatures;
	}

	public double getBudget(IFile clientConfig) {
		Properties client = new Properties();
		double budget = 0;

		try {
			client.load(clientConfig.getContents());
			budget = Double.parseDouble(client.getProperty("budget-SPLConfig"));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (CoreException e) {
			e.printStackTrace();
		}

		return budget;
	}
	
	public double getFinalBenefit(IFile benefits, String client) {
		Properties benefitsProp = new Properties();
		double benefitValue = 0;

		try {
			benefitsProp.load(benefits.getContents());
			benefitValue = Double.parseDouble(benefitsProp.getProperty(client));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (CoreException e) {
			e.printStackTrace();
		}

		return benefitValue;
	}

	public void setBenefit(LinkedList<Feature> linkedList, IFile client) {
		Properties clientProperties = new Properties();

		try {
			clientProperties.load(client.getContents());

			for (Feature f : linkedList) {
				if (clientProperties.containsKey(f.getName())) {
					clientProperties.setProperty(f.getName(), Double.toString(f.getBenefit()));
				} else {
					clientProperties.put(f.getName(), Double.toString(f.getBenefit()));
				}
				
			}
			FileOutputStream out = new FileOutputStream(client.getLocation().toFile());
			clientProperties.store(out, null);
			client.refreshLocal(IResource.DEPTH_ZERO, null);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (CoreException c) {
			c.printStackTrace();
		}
	}

	public void setCost(LinkedList<Feature> linkedList, IFile company) {
		Properties companyProperties = new Properties();

		try {
			companyProperties.load(company.getContents());

			for (Feature f : linkedList) {
				if (companyProperties.containsKey(f.getName())) {
					companyProperties.setProperty(f.getName(), Double.toString(f.getCost()));
				} else {
					companyProperties.put(f.getName(), Double.toString(f.getCost()));
				}

			}
			FileOutputStream out = new FileOutputStream(company.getLocation()
					.toFile());
			companyProperties.store(out, null);
			company.refreshLocal(IResource.DEPTH_ZERO, null);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (CoreException c) {
			c.printStackTrace();
		}
	}

	public void setBudget(IFile clientConfig, double budget) {
		Properties client = new Properties();

		try {
			client.load(clientConfig.getContents());
			if (client.containsKey("budget-SPLConfig")) {
				client.setProperty("budget-SPLConfig", Double.toString(budget));
			} else {
				client.put("budget-SPLConfig", Double.toString(budget));
			}

			FileOutputStream out = new FileOutputStream(clientConfig
					.getLocation().toFile());
			client.store(out, null);
			clientConfig.refreshLocal(IResource.DEPTH_ZERO, null);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (CoreException e) {
			e.printStackTrace();
		}
	}
	
	public void setFinalBenefit(IFile benefits, String client, double benefitValue) {
		Properties benefitProp = new Properties();

		try {
			
			benefits.refreshLocal(IResource.DEPTH_ZERO, null);
			
			//----------------
			benefitProp.load(benefits.getContents());
			//-----------------
			
			benefitProp.setProperty(client, Double.toString(benefitValue));
				
			FileOutputStream out = new FileOutputStream(benefits.getLocation().toFile());
			benefitProp.store(out, null);
			benefits.refreshLocal(IResource.DEPTH_ZERO, null);
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (CoreException e) {
			System.out.println("TESTE 4");
			e.printStackTrace();
		}
	}
}
