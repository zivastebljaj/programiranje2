import java.util.*;

public class Oseba {

	public static void main(String[] args) {
		Oseba marija = new Oseba("Marija", null, null);
		Oseba jurcek = new Oseba("Jurèek", null, marija);
		Oseba mateja = new Oseba("Mateja", null, null);
		Oseba tine = new Oseba("Tine", jurcek, mateja);
		List<Oseba> osebe = new ArrayList<Oseba>();
		osebe.add(marija);
		osebe.add(jurcek);
		osebe.add(mateja);
		osebe.add(tine);
		System.out.println(starsi(osebe));

	}
	String ime;
	String priimek;
	Oseba oce;
	Oseba mati;
	public Oseba(String ime, Oseba oce, Oseba mati) {
		this.ime = ime;
		this.oce = oce;
		this.mati = mati;
		if (oce != null)this.priimek = oce.priimek;
		else if(mati != null)this.priimek = mati.priimek;
		else this.priimek = "Novak";
	}
	public static Set<Oseba> starsi(List<Oseba> osebe){
		Set<Oseba> starsi = new HashSet<Oseba>();
		for (Oseba oseba: osebe) {
			if (oseba.mati != null) starsi.add(oseba.mati);
			if (oseba.oce != null) starsi.add(oseba.oce);
		}
		return starsi;
	}

}
