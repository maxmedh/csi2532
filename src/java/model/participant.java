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
public class participant {
    private String pid;
    private String prenom;
    private String nom;
    private String adressevillage;

    public participant(String pid, String prenom, String nom, String adressevillage) {
        this.pid = pid;
        this.prenom = prenom;
        this.nom = nom;
        this.adressevillage = adressevillage;
    }

    public participant() {
    }
    

    public String getPid() {
        return pid;
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

    public void setPid(String pid) {
        this.pid = pid;
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
    
    
}
