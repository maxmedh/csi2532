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
public class disciplines {
    private String nomd;
    private String epreuves;

    public disciplines(String nomd, String epreuves) {
        this.nomd = nomd;
        this.epreuves = epreuves;
    }

    public String getNomd() {
        return nomd;
    }

    public String getEpreuves() {
        return epreuves;
    }

    public void setNomd(String nomd) {
        this.nomd = nomd;
    }

    public void setEpreuves(String epreuves) {
        this.epreuves = epreuves;
    }

   
}
