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
public class employesducojo extends participant{
    private String adressepermanente;
    private String numerotelephone;

    public employesducojo(String adressepermanente, String numerotelephone, String pid, String prenom, String nom, String adressevillage) {
        super(pid, prenom, nom, adressevillage);
        this.adressepermanente = adressepermanente;
        this.numerotelephone = numerotelephone;
    }

    public String getAdressepermanente() {
        return adressepermanente;
    }

    public String getNumerotelephone() {
        return numerotelephone;
    }

    public void setAdressepermanente(String adressepermanente) {
        this.adressepermanente = adressepermanente;
    }

    public void setNumerotelephone(String numerotelephone) {
        this.numerotelephone = numerotelephone;
    }
    
}
