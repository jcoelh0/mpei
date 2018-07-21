package BloomFilter;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class finder {

	private final int rand = 28151;
	private int[][] matriz;
	private int numHashes;
	private ArrayList<String> Shingles;

	public finder(int numHashes, int k, String[] files) throws IOException {
		this.numHashes = numHashes;
		
		matriz = new int[numHashes][files.length];
		int cal = (int) (Math.random() * rand);
		int n = 0;
		for (String file : files) {
			Path path = Paths.get(file);

			try {
				List<String> lines = java.nio.file.Files.readAllLines(path);

				Shingles = shingle(lines, k);

				for (int i = 0; i < numHashes; i++) {
					int minimo = Integer.MAX_VALUE;
					for (String shingle : Shingles) {
						int hashed = Math.abs((cal * shingle.hashCode()) + cal) % rand;
						if (hashed < minimo)
							minimo = hashed;
					}
					matriz[i][n] = minimo;
				}

			} catch (IOException e) {
				System.out.println(e);
				for (int i = 0; i < numHashes; i++) {
					matriz[i][n] = -1;
				}
			}
			Shingles.clear();
			n++;
		}

	}

	public ArrayList<String> shingle(List<String> abc, int k) {
		ArrayList<String> Shingles = new ArrayList<>();
		for (String s : abc) {
			for (int i = 0; i < s.length() - k + 1; i++) {
				String shingle = s.substring(i, i + k);
				if (!Shingles.contains(shingle))
					Shingles.add(shingle);
			}
		}
		return Shingles;
	}
	
	public int similar(int[] array, int[] array2){ // quantos sao iguais
		int equalNum = 0;
		int min;
		
		if (array.length >= array2.length) min = array2.length;
		else min = array.length;
		
		for (int i = 0; i < min; i++)
			if (array[i] == array2[i]) 
				equalNum++;
		
		return equalNum/min;
	}
	
	public double[][] distance(String[] files) {
       
        double[][] distancia = new double[files.length][files.length];
        for (int i = 0; i < files.length; i++) {
        	distancia[i][i] = 0;
            for (int j = i + 1; j < files.length; j++) {
            	distancia[i][j] = 1-(double) similar(matriz[i], matriz[j])
            						/ (double) numHashes;
            	distancia[j][i] = distancia[i][j];
            }
        }
        return distancia;
    }
	public String[] thresholdDist(double threshold, String[] files){
        double[][] distancia = distance(files);
        ArrayList<String> retorno = new ArrayList<>();
        for(int i = 0; i< files.length; i++){
            if ((distancia[0][i]<threshold)&&(!files[i].equals(files[0]))) 
            	retorno.add(files[i]);
        }
        return retorno.toArray(new String[0]);
    }
}
