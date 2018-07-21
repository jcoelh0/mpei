package BloomFilter;

import java.util.Scanner;

public class BloomFilterTest {
	static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) {
		int n; // numero de bits no array
		double prob; // probabilidade de falsos positivos
		System.out.print("Introduza numero de elementos a adicionar: ");
		n = sc.nextInt();
		System.out.print("Introduza probabilidade de falsos positivos: ");
		prob = sc.nextDouble();
		BloomFilter b = new BloomFilter(n, prob);
		sc.nextLine();
		for(int i=0;i<n;i++){
			System.out.printf("String %d : ", i+1);
			b.insert(sc.nextLine());
		}
		String k="";
		do{
			System.out.print("Introduza String para verificar se pertence ao BloomFilter(0 para sair): ");
			k = sc.nextLine();
			if(k.equals("0")) System.exit(0);
			if(b.isMember(k))System.out.print("String provavelmente contida no Bloom Filter.\n");
			else System.out.print("A String não pertence ao Bloom Filter.\n");
		}
		while(k!="0");
		
	}

}
