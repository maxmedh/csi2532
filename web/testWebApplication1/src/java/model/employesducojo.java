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
public class employesducojo {
    private String eid;
    private String prenom;
    private String nom;
    private String adressevillage;
    private String adressepermanente;
    private String numerotelephone;

    public employesducojo(String eid, String prenom, String nom, String adressevillage, String adressepermanente, String numerotelephone) {
        this.eid = eid;
        this.prenom = prenom;
        this.nom = nom;
        this.adressevillage = adressevillage;
        this.adressepermanente = adressepermanente;
        this.numerotelephone = numerotelephone;
    }

    public String getEid() {
        return eid;
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

    public String getNumerotelephone() {
        return numerotelephone;
    }

    public void setEid(String eid) {
        this.eid = eid;
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

    public void setNumerotelephone(String numerotelephone) {
        this.numerotelephone = numerotelephone;
    }
    
}
