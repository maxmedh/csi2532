/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Owner
 */
public class athletes {

    private String aid;
    private String prenom;
    private String nom;
    private String adressevillage;
    private String adressepermanente;
    private String nationalite;
    private String medaille;

    public athletes(String aid, String prenom, String nom, String adressevillage, String adressepermanente, String nationalite, String medaille) {
        this.aid = aid;
        this.prenom = prenom;
        this.nom = nom;
        this.adressevillage = adressevillage;
        this.adressepermanente = adressepermanente;
        this.nationalite = nationalite;
        this.medaille = medaille;
    }

    public String getAid() {
        return aid;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getNom() {
        return nom;
    }

    public String getAdressevillage() {
        return adressevillage;
    }

    public String getAdressepermanente() {
        return adressepermanente;
    }

    public String getNationalite() {
        return nationalite;
    }

    public String getMedaille() {
        return medaille;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setAdressevillage(String adressevillage) {
        this.adressevillage = adressevillage;
    }

    public void setAdressepermanente(String adressepermanente) {
        this.adressepermanente = adressepermanente;
    }

    public void setNationalite(String nationalite) {
        this.nationalite = nationalite;
    }

    public void setMedaille(String medaille) {
        this.medaille = medaille;
    }
    
}
