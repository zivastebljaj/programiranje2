import java.util.*;

public class Ladja {
	public static void main(String[] args) {
		Ladja l = new Ladja(23);
		List<Integer> prvi = Arrays.asList(1,2,10);
		List<Integer> drugi = Arrays.asList(2,12,10);
		l.natovori(prvi);
		System.out.println(l.tovor);
		l.natovori(drugi);
		System.out.println(l.tovor);
		System.out.println(l.odstranjeni);
	}
	int nosilnost;
	List<Integer> tovor; 
	List<Integer> odstranjeni;
	public Ladja (int nosilnost) {
		this.nosilnost = nosilnost;
		this.tovor = new ArrayList<Integer>();
		this.odstranjeni = new ArrayList<Integer>();
	}
	public void natovori(List<Integer> stvari) {
		int prostor = nosilnost;
		System.out.print("*" + prostor +"*");
		for(int paket: tovor) prostor -= paket;		
		for(int paket: stvari) {
			tovor.add(paket);
			prostor -= paket;
			System.out.print("*" + prostor +"*");
			}
		while(prostor < 0) {
			prostor += tovor.get(0);
			odstranjeni.add(tovor.get(0));
			tovor.remove(0);						
			System.out.print("*" + prostor +"*");
		}
	}
	public List<Integer> odstranjenih(){
		return odstranjeni;

}
	
	




}
