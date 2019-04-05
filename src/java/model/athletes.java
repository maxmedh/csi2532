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
public class athletes extends participant {

    private String adressepermanente;
    private String nationalite;
    private String medaille;

    public athletes(String adressepermanente, String nationalite, String medaille, String pid, String prenom, String nom, String adressevillage) {
        super(pid, prenom, nom, adressevillage);
        this.adressepermanente = adressepermanente;
        this.nationalite = nationalite;
        this.medaille = medaille;
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
