import java.util.*;

public class KuhamoInPecemo {

	public static void main(String[] args) {
		Map<String, Integer> slovar1 = new HashMap<>();
		slovar1.put("jajca", 2);
		slovar1.put("moka", 4);
		Map<String, Integer> slovar2 = new HashMap<>();
		slovar2.put("jajca", 3);
		slovar2.put("sol", 4);
		System.out.println(aliImamo(slovar2, slovar1));
		System.out.println(kupiti(slovar2, slovar1));

	}
	public static Map<String, Integer> pomnozi(Map<String, Integer> slovar, int faktor){
		Map<String, Integer> novi = new HashMap<String, Integer>();
		for (String niz : slovar.keySet()) {
			novi.put(niz, slovar.get(niz) * faktor);
		}
		return novi;
		
	}
	public static boolean aliImamo(Map<String, Integer> recept, Map<String, Integer> shramba) {
		for(String niz : recept.keySet()) {
			if (!shramba.containsKey(niz)) return false;
		}
		return true;
	}
	public static Map<String, Integer> kupiti (Map<String, Integer> recept, Map<String, Integer> shramba ){
		Map<String, Integer> novi = new HashMap<String, Integer>();
		for (String sestavina : recept.keySet()) {
			if (!shramba.containsKey(sestavina)) {
				novi.put(sestavina, recept.get(sestavina));
			}
			else if (recept.get(sestavina) > shramba.get(sestavina)) {
				novi.put(sestavina,recept.get(sestavina) - shramba.get(sestavina));
			}
		}
		return novi;
	}

}
