package BloomFilter;

import java.io.IOException;
import java.util.Scanner;

public class finderTest {
	static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) throws IOException{
		
		//String[] array = {"teste.txt","teste2.txt"};
		System.out.print("Introduza o número de hashFunctions desejadas:");
		int nHash = sc.nextInt();
		System.out.print("Introduza o número de k shingles:");
		int k = sc.nextInt();
		
		String[] livros = {"Audrey_Hepburn-Chris_Rice.txt","The_Willing_Ghost-Robert_Wellington.txt"};
		
		finder ola = new finder(nHash,k,livros);
		double[][] distancia;
		String[] print;
		
		
		print = ola.thresholdDist(0.3, livros);
		
		for (int i = 0; i < print.length; i++) {
			System.out.println(print[i]);
		}
		
		distancia = ola.distance(livros);
		for (int i = 0; i < distancia.length; i++) 
			for (int j = 0; j < distancia.length; j++) 
				System.out.println("distancia é:"+distancia[i][j]);
			
	}
}
