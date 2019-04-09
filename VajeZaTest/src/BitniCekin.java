
public class BitniCekin {

	public static void main(String[] args) {
		BitniCekin racun1 = new BitniCekin(100);
		BitniCekin racun2 = new BitniCekin(200);
		racun1.dvig(50);
		prenesi(racun1, racun2, 50);
		System.out.println(racun1.stanje);
		System.out.println(racun2.stanje);
		prenesi(racun1, racun2, 50);

	}
	int stanje;
	public BitniCekin(int stanje) {
		this.stanje = stanje;
	}
	public boolean dvig(int koliko) {
		if ((stanje - koliko) >= 0) {
			stanje -= koliko;
			return true;
		}
		else {
			System.out.println("Ni dovolj na raèunu!");
			return false;
		}
	}
	public void polog(int koliko) {
		stanje += koliko;
	}
	public static void prenesi(BitniCekin prvi, BitniCekin drugi, int koliko) {
		if (prvi.dvig(koliko)) {
			prvi.dvig(koliko);
			drugi.polog(koliko);
		}
	}

}
