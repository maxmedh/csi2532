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
public class installation {
    private String iid;
    private String nom;
    private String capacite;
    private String addresse;
    private String usage;
    private String description;

    public installation(String iid, String nom, String capacite, String addresse, String usage, String description) {
        this.iid = iid;
        this.nom = nom;
        this.capacite = capacite;
        this.addresse = addresse;
        this.usage = usage;
        this.description = description;
    }

    public String getIid() {
        return iid;
    }

    public String getNom() {
        return nom;
    }

    public String getCapacite() {
        return capacite;
    }

    public String getAddresse() {
        return addresse;
    }

    public String getUsage() {
        return usage;
    }

    public String getDescription() {
        return description;
    }

    public void setIid(String iid) {
        this.iid = iid;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setCapacite(String capacite) {
        this.capacite = capacite;
    }

    public void setAddresse(String addresse) {
        this.addresse = addresse;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
