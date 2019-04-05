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
public class servicemedicaux {
    private String description;
    private String numerotelephone;
    private String adresse;
    private String nomsm;

    public servicemedicaux(String description, String numerotelephone, String adresse, String nomsm) {
        this.description = description;
        this.numerotelephone = numerotelephone;
        this.adresse = adresse;
        this.nomsm = nomsm;
    }

    public String getDescription() {
        return description;
    }

    public String getNumerotelephone() {
        return numerotelephone;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getNomsm() {
        return nomsm;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setNumerotelephone(String numerotelephone) {
        this.numerotelephone = numerotelephone;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public void setNomsm(String nomsm) {
        this.nomsm = nomsm;
    }
   
}
