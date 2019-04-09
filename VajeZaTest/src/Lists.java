import java.util.*;

public class Lists {

	public static void main(String[] args) {
		int[] sez1 = {1,2,3};
		test(sez1);
		List<Integer> sez2 = Arrays.asList(1,2,3);
		//System.out.println(dodajEna(sez2));
		//Map<String, String> test1 = Map.of(
			    //"a", "b",
			    //"c", "d"
			//);
		//System.out.println(test2);
		//String niz = "abc";
		//System.out.println(niz.substring(1,3));
		int a = 2;
		sez2.add(a);
		//System.out.println(sez2);
		
	}
	public static ArrayList<Integer> test(int[] sez) {
		ArrayList<Integer> novi = new ArrayList<Integer>();
		for (int i = 0; i < sez.length; i++) {
			novi.add(sez[i] + 1);
		}
		return novi;
	}
	public static List<Integer> dodajEna(List<Integer> sez){
		List<Integer> novi = new LinkedList<Integer>();
		for (int i = 0; i < sez.size(); i++) {
			novi.add(i, sez.get(i) + 1);
		}
		return novi;
		
	}


}
