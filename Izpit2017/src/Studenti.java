import java.io.*;
import java.util.Arrays;
public class Studenti {

	public static void main(String[] args) throws IOException{
		izpisi(obdelaj("C:\\Users\\Živa\\Desktop\\test.txt"));

	}
	public static String podaljsaj(String niz, int n) {
		String novi = "";
		for (int i = 0; i<n; i++) novi += niz;
		return novi;
	}
	
	public static int[] obdelaj (String ime) throws IOException {
		BufferedReader vhod = new BufferedReader(new FileReader(ime));
		int[] stevci = {0,0,0,0,0,0,0,0,0,0};
		while (vhod.ready()) {
			String vrstica = vhod.readLine().trim();
			if (vrstica.equals("")) continue;
			String[] besede = vrstica.split(" +");
			int tocke = Integer.parseInt(besede[2]);
			int j = tocke / 10;
			stevci[j] +=1;
		}
		vhod.close();
		System.out.println(Arrays.toString(stevci));
		return stevci;
	}
	public static void izpisi(int[] sez) {
		for (int i=0; i<sez.length - 1; i++) {
			System.out.println(" " + Integer.toString(i + 1) + ": " + podaljsaj("*", sez[i]));
		}
		System.out.println("10: " + podaljsaj("*", sez[9]));
	}
	

}
