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
public class officiels {
    private String oid;
    private String prenom;
    private String nom;
    private String adressevillage;
    private String type;

    public officiels(String oid, String prenom, String nom, String adressevillage, String type) {
        this.oid = oid;
        this.prenom = prenom;
        this.nom = nom;
        this.adressevillage = adressevillage;
        this.type = type;
    }

    public String getOid() {
        return oid;
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

    public String getType() {
        return type;
    }

    public void setOid(String oid) {
        this.oid = oid;
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

    public void setType(String type) {
        this.type = type;
    }
    
}
