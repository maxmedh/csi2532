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
public class servicetransport {
    private String tid;
    private String frequence;
    private String ptdepart;
    private String ptarrive;
    private String itineraire;

    public servicetransport(String tid, String frequence, String ptdepart, String ptarrive, String itineraire) {
        this.tid = tid;
        this.frequence = frequence;
        this.ptdepart = ptdepart;
        this.ptarrive = ptarrive;
        this.itineraire = itineraire;
    }

    public String getTid() {
        return tid;
    }

    public String getFrequence() {
        return frequence;
    }

    public String getPtdepart() {
        return ptdepart;
    }

    public String getPtarrive() {
        return ptarrive;
    }

    public String getItineraire() {
        return itineraire;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public void setFrequence(String frequence) {
        this.frequence = frequence;
    }

    public void setPtdepart(String ptdepart) {
        this.ptdepart = ptdepart;
    }

    public void setPtarrive(String ptarrive) {
        this.ptarrive = ptarrive;
    }

    public void setItineraire(String itineraire) {
        this.itineraire = itineraire;
    }
    
}
