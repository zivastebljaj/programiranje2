import java.util.*;


public class Ljubezen {

	public static void main(String[] args) {
		Set<String> mn1 = new HashSet<String>();
		mn1.add("Bine");
		mn1.add("Cene");
		Set<String> mn2 = new HashSet<String>();
		Set<String> mn3 = new HashSet<String>();
		mn3.add("Bine");
		Set<String> mn4 = new HashSet<String>();
		mn4.add("Davorka");
		Set<String> mn5 = new HashSet<String>();
		mn5.add("Bine");
		Map<String, Set<String>> slovar1 = new HashMap<>();
		slovar1.put("Ana", mn1);
		slovar1.put("Bine", mn2);
		slovar1.put("Cene", mn3);
		slovar1.put("Davorka", mn4);
		slovar1.put("Eva", mn5);
		System.out.println(narcisoidni(slovar1));
		System.out.println(ljubljeni(slovar1));
		System.out.println(pari(slovar1));

	}
	public static Set<String> narcisoidni(Map<String, Set<String>> slovar) {
		Set<String> mn = new HashSet<String>();
		for (String zaljubljen: slovar.keySet()) {
			Set <String> ljubljeni = slovar.get(zaljubljen);
			if (ljubljeni.contains(zaljubljen)) mn.add(zaljubljen);
		}
		return mn;
	}
	public static Set<String> ljubljeni(Map<String, Set<String>> slovar){
		Set<String> mn = new HashSet<String>();
		for (Set<String> ljubezen: slovar.values()) mn.addAll(ljubezen);
		return mn;
	}
	public static Set<String[]> pari(Map<String, Set<String>> slovar) {
		Set<String[]> mn = new HashSet<String[]>();
		for (String zaljubljen: slovar.keySet()) {
			Set <String> ljubljeni = slovar.get(zaljubljen);
			for (String ljubezen : ljubljeni) {
				if (slovar.get(ljubezen).contains(zaljubljen)) {
					String[] par = new String[2];
					mn.add(par);
				}
			}
		}
		return mn;
	}
	

}
