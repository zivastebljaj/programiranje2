import java.io.*;
public class Kolokviji {

	public static void main(String[] args) throws IOException {
		zapisi("C:\\Users\\Živa\\Desktop\\test.txt", "C:\\Users\\Živa\\Desktop\\rezultati.txt");

	}
	public static void zapisi (String imeVhodne, String imeIzhodne) throws IOException{
		BufferedReader vhod = new BufferedReader(new FileReader(imeVhodne));
		PrintWriter izhod = new PrintWriter(new FileWriter(imeIzhodne));
		while(vhod.ready()) {
			String vrstica = vhod.readLine().trim();
			if (vrstica.equals("")) continue;
			String[] besede = vrstica.split(",");
			int vsota = 0;
			for(int i = 1; i < besede. length; i++)vsota += Integer.parseInt(besede[i]);
			izhod.println(besede[0] + ": " + vsota);
		}
		vhod.close();
		izhod.close();
	}
	

}
