package BloomFilter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Scanner;

public class ua {
	static Scanner sc = new Scanner(System.in);
	public static void main(String[] args) throws IOException{
		
		ArrayList<curso> cursos = new ArrayList<>();
		int sel;
		
		do{
			System.out.println("\nSelecione a opção: ");
			System.out.println("1 - Adicionar curso");
			System.out.println("2 - Verificar se curso ja existe");
			System.out.println("3 - Comparar dois cursos");
			System.out.println("0 - Sair");
			System.out.print("-> ");
			sel = sc.nextInt();
			switch(sel){
				case 0: break;
				case 1: {
					sc.nextLine();
					System.out.print("Introduza nome do curso :");
					String name = sc.nextLine();
					String tmp = "";
					curso a = new curso(name);
					while(true){
						System.out.printf("Introduza nome de uma cadeira do curso %s(0 para terminar):", name);
						tmp = sc.nextLine();
						if(tmp.equals("0")) break;
						System.out.printf("Introduza o nr de ects da cadeira :");
						int etcs = sc.nextInt();
						sc.nextLine();
						a.addCadeira(tmp, etcs);
					}
					cursos.add(a);
					String ss = name + ".txt";
					PrintWriter writer = new PrintWriter(ss, "UTF-8");
					for(int i = 0; i<a.getNumCadeiras();i++) 
						writer.println(a.getNomeCadeira(i) + " " + a.getCadeira(i).getEcts());
					writer.close();
					System.out.print("Curso adicionado com sucesso(ficheiro guardado).\n");
					break;
				}
				case 2: {
					sc.nextLine();
					System.out.printf("Nome do curso a verificar se já existe: ");
					String s = sc.nextLine();
					BloomFilter bf = new BloomFilter(cursos.size(), 0.001);
					for(int i=0; i<cursos.size(); i++){
						bf.insert(cursos.get(i).getNome());
					}
					if(bf.isMember(s)) System.out.println("Cursos já foi inserido anteriormente.");
					else System.out.println("Curso ainda não foi inserido.");
					break;
				}
				case 3: {
					System.out.print("Introduza o nome do 1º curso:");
					sc.nextLine();
					String x = sc.nextLine();
					System.out.print("\nIntroduza o nome do 2º curso:");
					String y = sc.nextLine();
					x +=".txt";
					y +=".txt";
					
					System.out.print("\nIntroduza o número de hashFunctions desejadas:");
					int nHash = sc.nextInt();
					
					System.out.print("\nIntroduza o número de k shingles:");
					int k = sc.nextInt();
					
					String[] c = {x,y};
					
					finder ola = new finder(nHash,k,c);
					double[][] distancia;
					String[] print;
					
					
					print = ola.thresholdDist(0.3, c);
					
					for (int i = 0; i < print.length; i++) {
						System.out.println(print[i]);
					}
					
					distancia = ola.distance(c);
					
					double max = Integer.MIN_VALUE;
					for (int i = 0; i < distancia.length; i++)
						for (int j = 0; j < distancia.length; j++)
							max = Math.max(max, distancia[i][j]);
					
					System.out.println("distancia é: "+max);
					break;
				}
			}
		}while(sel!=0);
	}
}
