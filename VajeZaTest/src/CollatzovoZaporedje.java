
public class CollatzovoZaporedje {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println(naslednjiClen(2));
		System.out.println(najvecjiClen(6));
		System.out.println(dolzinaZaporedja(6));

	}
	public static int naslednjiClen (int n) {
		if (n % 2 == 0) return n / 2;
		else return 3 * n + 1;
	}
	public static int najvecjiClen (int n) {
		int najvecji = n;
		while (n > 1) {
			if (naslednjiClen(n) > najvecji) {
				najvecji = naslednjiClen(n);
			}
			n = naslednjiClen(n);
		}
		return najvecji;
	}
	public static int dolzinaZaporedja (int n) {
		int dolzina = 1;
		while (n > 1) {
			dolzina += 1;
			n = naslednjiClen(n);
		}
		return dolzina;
	}

}
