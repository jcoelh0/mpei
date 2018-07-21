package mpei;

public class testBloomFilter {

	public static void main(String[] args) {
		BloomFilter b = new BloomFilter(10, 0.5);
		b.insert("aa");
		b.insert("bb");
		b.insert("cc");
		b.insert("dd");
		b.insert("ee");
		b.insert("ff");
		b.insert("gg");
		b.insert("hh");
		b.insert("ii");
		b.insert("jj");
		System.out.println(b.isMember("aa"));
		System.out.println(b.isMember("cc"));
		System.out.println(b.isMember("cq"));
		System.out.println(b.isMember("cdqwdq"));
		System.out.println(b.isMember("21daa"));
		System.out.println(b.isMember("jj"));

	}

}
