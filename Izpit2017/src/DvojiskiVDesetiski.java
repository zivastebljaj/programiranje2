import java.util.*;

public class DvojiskiVDesetiski {

	public static void main(String[] args) {
		String st1 = "00110010011101101010101011110000"; 
		System.out.println(izpisi(razbij(st1)));
		String[] sez1 = izpisi(razbij(st1));
		for (int i = 0; i < sez1.length; i++) System.out.print(sez1[i] + " ");
		System.out.println(razbij(st1));
		System.out.println(delitelji(32));

	}
	public static String pretvori(String niz) {
		int stevilo = 0;
		int n = niz.length();
		for (int i = 0; i < niz.length(); i ++) {
			stevilo += Integer.parseInt(String.valueOf(niz.charAt(i))) * Math.pow(2,n -1 - i);
		}
		return Integer.toString(stevilo);
	}
	public static List<Integer> delitelji(int n) {
		List<Integer> delitelji = new ArrayList<Integer>();
		int i = 8;
		while (i <= n + 1) {
			delitelji.add(i);
			i += 8;
		}
		return delitelji;
	}
	public static List<String> razbij(String niz) {
		int dolzina = niz.length();
		List<Integer> delitelji = delitelji(dolzina);
		List<String> stevila = new ArrayList<String>();
		int zacetek = 0;
		for (int i : delitelji) {
			stevila.add(niz.substring(zacetek, i));
			zacetek = i;
		}
		return stevila;
	}
		
	public static String[] izpisi(List<String> sez) {
		int dolzina = sez.size();
		String[] desetiski = new String[dolzina];
		for (int i = 0;i< dolzina; i++) {
			desetiski[i] = pretvori(sez.get(i));
		}
		return desetiski;
	}

}
