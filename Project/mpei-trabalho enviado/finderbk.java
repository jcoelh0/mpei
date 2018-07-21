package mpei;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

//TESTEEEEEEEEEEEEEEEEEEX
public class finderbk {

    private int k; // shingles size
    private String[] txt; // array com o conteudo dos ficheiros
    private boolean[][] matriz; // from shingles to boolean
    private int numHash, numFiles;
    private ArrayList<String> shingles = new ArrayList<String>();

    public finderbk(int k, String[] files) throws IOException {
        this.k = k;
        //files = new String[files.length];
        int count = 0;
        for (String file : files) {
        	Path path = Paths.get(file);
        	Charset charset = Charset.forName("ISO-8859-1");
        	try {
        		List<String> lines = Files.readAllLines(path, charset);
        		for (String line : lines) {
        			while (line != null) {
        				txt[count] += (line + " ");
        			}
        		}
            } catch (IOException e) {
              System.out.println(e);
            }
   
            shingle(file, k);
            count++;
        }
        for (int j = 0; j < txt.length; j++){
            for (int i = 0; i < shingles.size(); i++){
                if (txt[j].contains(shingles.get(i)))
                    matriz[j][i] = true;
            }
        }
    }

    public void shingle(String s, int k) {

        for (int i = 0; i < s.length() - k + 1; i++) {
            String shingle = s.substring(i, i + k);
            if (!shingles.contains(shingle))
                shingles.add(shingle);
        }
    }
}