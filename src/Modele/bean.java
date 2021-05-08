package Modele;

public class bean {
	private double num;
public bean() {
	
	 setNum(0);
}
public double getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}
public static double alea (String nbsaisi) {
	int nbsaisi1=Integer.parseInt(nbsaisi);
	return Math.random()*nbsaisi1;
}
}
