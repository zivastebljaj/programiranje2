import java.util.*;

public class Lego {

	public static void main(String[] args) {
		Map<String, Integer> barva1 = new HashMap<String, Integer>();
		barva1.put("rdeèa", 3);
		Map<String, Integer> barva2 = new HashMap<String, Integer>();
		barva2.put("rdeèa", 1);
		barva2.put("rumena", 5);
		Map<String, Integer> barva3 = new HashMap<String, Integer>();
		barva3.put("rumena", 3);
		barva3.put("rdeèa", 2);
		Map<String, Integer> barva4 = new HashMap<String, Integer>();
		barva4.put("rumena", 1);
		barva4.put("rdeèa", 1);
		Map<String, Integer> barva5 = new HashMap<String, Integer>();
		barva5.put("modra", 2);
		Map<String, Map<String, Integer>> sk1 = new HashMap<String, Map<String, Integer>>();
		sk1.put("4x1", barva1);
		sk1.put("2x2", barva2);
		Map<String, Map<String, Integer>> sk2 = new HashMap<String, Map<String, Integer>>();
		sk2.put("4x1", barva3);
		sk2.put("2x2", barva4);
		sk2.put("8x1", barva5);
		System.out.println(prestavi(sk1, sk2));

	}
	public static Map<String, Map<String, Integer>> prestavi (Map<String, Map<String, Integer>> sk1,
			Map<String, Map<String, Integer>>sk2){
		for(String oblika: sk2.keySet()) {
			if(sk1.containsKey(oblika)) {
				for (String barva: sk2.get(oblika).keySet()) {
					if (sk1.get(oblika).containsKey(barva)) {
						int x = sk1.get(oblika).get(barva);
						int y = sk2.get(oblika).get(barva);
						int vsota = x + y;
						sk1.get(oblika).put(barva, vsota);
					}
					else {
						sk1.get(oblika).put(barva, sk2.get(oblika).get(barva));
					}
				}
			}
			else {
				sk1.put(oblika, sk2.get(oblika));
			}
		}
		return sk1;
	}

}
