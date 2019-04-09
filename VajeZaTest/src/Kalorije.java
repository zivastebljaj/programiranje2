import java.util.*;
import java.io.*;
public class Kalorije {

	public static void main(String[] args) throws IOException {
		System.out.println(kalorijeNaDan("C:\\Users\\Živa\\Desktop\\test.txt"));

	}
	public static List<Integer> kalorijeNaDan(String ime) throws IOException {
		BufferedReader vhod = new BufferedReader(new FileReader(ime));
		List<Integer> vsote = new LinkedList<Integer>();
		while (vhod.ready()) {
			String vrstica = vhod.readLine().trim();
			int vsota = 0;
			if (vrstica.equals("")) continue;
			String[] stevila = vrstica.split(",");
			for (String stevilo : stevila) {
				int st = Integer.parseInt(stevilo);
				vsota += st;
			}
			vsote.add(vsota);
		}
		vhod.close();
		return vsote;
	}

}
