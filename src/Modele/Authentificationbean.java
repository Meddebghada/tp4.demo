package Modele;

public class Authentificationbean {
	private String nom;
	private String prenom;
	public Authentificationbean () {
		setNom("");
		setPrenom("");
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	

}
