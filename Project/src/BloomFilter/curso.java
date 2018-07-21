package BloomFilter;

import java.util.ArrayList;
import java.util.Scanner;


public class curso {
	
	static Scanner sc = new Scanner(System.in);
	private String nome;
	private ArrayList<cadeira> cadeiras = new ArrayList<cadeira>();
	private int ects;
	
	public curso(String inome){
		this.nome = inome;
		for(int i = 0; i < cadeiras.size(); i++) ects += cadeiras.get(i).getEcts();
	}
	
	public void addCadeira(String inome, int iects){
		cadeiras.add(new cadeira(inome, iects));
	}
	
	public String getNome() {
		return nome;
	}
	
	public cadeira getCadeira(int i){
		return cadeiras.get(i);
	}
	public String getNomeCadeira(int i) {
		return cadeiras.get(i).getNome();
	}
	
	public int getNumCadeiras() {
		return cadeiras.size();
	}
	
	public int getEcts() {
		return ects;
	}
}
