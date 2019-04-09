
public class Disemvoweling {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//System.out.println(disemvowel("blaAhuihfaupadhu"));
		System.out.println(razveljaviDisemvowel("B*n*n* j* d*br*!aaaeoa"));
		//razveljaviDisemvowel("B*n*n* j* d*br*!aaaeoa");

	}
	public static String disemvowel(String niz) {
		String novi = "";
		String samoglasniki = "aeiuoAEIOU";
		String konec = "";
		for (int i = 0; i < niz.length(); i++) {
			char znak = niz.charAt(i);
			if (samoglasniki.indexOf(znak) >= 0) konec += znak;
			else novi += znak;
		}
		return (novi + konec);
	}
	public static int prestej (String niz, char x) {
		int stevec = 0;
		for (int i = 0; i < niz.length(); i ++) {
			if (niz.charAt(i) == x) stevec ++;
		}
		return stevec;
	}
	public static String razveljaviDisemvowel(String niz) {
		String novi = "";
		int steviloZvezdic = prestej(niz, '*');
		int stevec = steviloZvezdic;
		for (int i = 0; i < niz.length() - steviloZvezdic; i++) {
			char znak = niz.charAt(i);
			if (znak == '*') {
				novi += niz.charAt(niz.length() - stevec);
				stevec -= 1;
			}
			else novi += znak;
		}
		return novi;
	}

}
