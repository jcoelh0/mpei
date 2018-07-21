package BloomFilter;

public class BloomFilter {
	private final int k; // Number of hash functions
	private boolean[] lista;
	private int m;
	
	public BloomFilter(int n, double prob){
		assert(n>0);
		m = 1 + (int) Math.ceil(n * Math.log(prob) / Math.log(1 / Math.pow(2, Math.log(2))));
        this.k = (int) Math.round(Math.log(2.0) * m / n);
		lista = new boolean[m];	
	}
	
	public void insert(String str){
		if(k==1) lista[hashString(str)] = true;
		else{
			int a = hashString(str);
			for(int i=1; i<k;i++){
				a = hashInt(a);
			}
			lista[Math.abs(a)%(m)] = true;			
		}
	}	
	
	public int hashString(String str){
		int a = (int)Math.abs(str.hashCode())+1;
		return a;
	}
	
	public int hashInt(int h){
		h ^= (h << 13);
	    h ^= (h >>> 17);        
	    h ^= (h << 5);
	    return h;		
	}

	public Boolean isMember(String str){
		if(k==1) return lista[hashString(str)];
		else{
			int a = hashString(str);
			for(int i=1; i<k;i++){
				a = hashInt(a);
			}
			return lista[Math.abs(a)%(m)];			
		}
	}
}
