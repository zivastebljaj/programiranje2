import java.util.*;
public class Blagajna {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
	public static double davcnaOsnova(double mpc, double ddv) {
		double osnova = (100 * mpc) / (100 + ddv);
		return osnova;
	}
	public static double znesek (Map<String, double[]>artikli, Map<String, double[]>racun) {
		double znesek = 0;
		for (String nakup: racun.keySet()) {
			double popust = racun.get(nakup)[1];
			double vsota = racun.get(nakup)[0] * artikli.get(nakup)[0];
			znesek += vsota - (vsota * (popust/100));
		}
		return znesek;
	}

}
