
public class Matrika {

	public static void main(String[] args) {
		double[][] A = {
				{1, 2, 3, 4},
				{3, 4, 5, 6},
				{5, 6, 2, 1}
		};
		double[][] B = {
				{1, 2, 5},
				{3, 4, 5}
		};
		
		double[] vec1 = {1,2,3};
		printMatrix(transponiraj(A));
		printVector(uporabi(B, vec1));
		//printMatrix(sestej(A, A));
		//printMatrix(identiteta(4));
		printMatrix(zmnozi(B, A));


	}
	public static void printMatrix(double[][] M) {
		if (M == null) System.out.println("null");
		else {
			for (int i = 0; i < M.length; i++) {
				for (int j = 0; j < M[0].length; j++) {
					System.out.print(M[i][j] + " ");
				}
				System.out.println();
			}
		}
	}
	public static void printVector(double[] vec) {
		for (int i = 0; i < vec.length; i++) {
			System.out.print(vec[i] + " ");
		}
		System.out.println();
	}
	 public static double[][] transponiraj(double[][] A) {
		 double[][] C = new double[A[0].length][A.length];
		 for (int i = 0; i < A.length; i++) {
			 for (int j = 0; j < A[0].length; j++) {
				 C[j][i] = A[i][j];
			 }
		 }
		 return C;
	 }
	 public static double[] uporabi(double[][] A, double[] vec) {
		 double[] novi = new double[A.length];
		 double vsota = 0;
		 for (int i = 0; i < A.length; i++) {
			 for (int j = 0; j < A[0].length; j++) {
				 vsota += A[i][j] * vec[j];
			 }
			 novi[i] = vsota;
			 vsota = 0;
		 }
		 return novi;
	 }
	 public static double[][] sestej(double[][] A, double[][] B){
		 double[][] C = new double[A.length][A[0].length];
		 for (int i = 0; i < A.length; i++) {
			 for (int j = 0; j < A[0].length; j++) {
				 C[i][j] = A[i][j] + B[i][j];
			 }
		 }
		 return C;
	 }
	 public static double[][] identiteta(int n){
		 double[][] id = new double[n][n];
		 for (int i = 0; i < n; i++) {
			 for (int j = 0; j < n; j++) {
				 if (i == j) id[i][j] = 1;
				 else id[i][j] = 0;
			 } 
		 }
		 return id;
	 }
	 public static double[][] zmnozi(double[][] A, double[][] B){
		 double[][] C = new double[A.length][B[0].length];
		 for (int i = 0; i < A.length; i++) {
			 for (int j = 0; j < B[0].length; j++) {
				 double c = 0;
					for (int k = 0; k < B.length; k++) c += A[i][k] * B[k][j];
					C[i][j] = c;
			 }
		 }
		 return C;
	 }

}
