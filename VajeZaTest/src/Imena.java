import java.io.*;
import java.util.*;
public class Imena {

	public static void main(String[] args) throws IOException {
		//pojavitve("Luka,Ana,Luka,Maja", "C:\\Users\\Živa\\Desktop\\imena.txt");
		System.out.println(prestejPojavitve("Ana,Ana", "Ana"));
		kolikokratizDatoteke("C:\\Users\\Živa\\Desktop\\test.txt","C:\\Users\\Živa\\Desktop\\imena.txt");

	}
	public static int prestejPojavitve(String niz1, String niz2) {
		String[] imena = niz1.split(",");
		int stevec = 0;
		for (String ime: imena) {
			if (ime.equals(niz2))stevec += 1;
		}
		return stevec;
	}
	public static void pojavitve(String niz, String datoteka)throws IOException {
		PrintWriter izhod = new PrintWriter(new FileWriter(datoteka));
		String[] imena = niz.split(",");
		Set<String> brezPonovitev = new HashSet<String>(Arrays.asList(imena));
		for (String ime : brezPonovitev) {
			izhod.println(ime + " " + prestejPojavitve(niz, ime));
		}
		izhod.close();
	}
	public static void kolikokratizDatoteke(String dat1, String dat2)throws IOException {
		PrintWriter izhod = new PrintWriter(new FileWriter(dat2));
		BufferedReader vhod = new BufferedReader(new FileReader(dat1));
		String niz = "";
		Set<String> imenabrez = new HashSet<String>();
		while(vhod.ready()) {
			String vrstica = vhod.readLine().trim();
			if (vrstica.equals("")) continue;
			String[] besede = vrstica.split(",");
			for (String beseda :besede) {
				imenabrez.add(beseda);
				niz+=beseda + ",";
			}
		}
		vhod.close();
		System.out.println(niz);
		for(String ime:imenabrez) {
			izhod.println(ime + " " + prestejPojavitve(niz, ime));
		}
		izhod.close();
	}
}
