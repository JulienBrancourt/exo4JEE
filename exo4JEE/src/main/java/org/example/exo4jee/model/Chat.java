package org.example.exo4jee.model;

import java.util.Date;

public class Chat {
    private String nom;
    private String race;
    private String repas;
    private Date dateNaissance;

    public Chat(String nom, String race, String repas, Date dateNaissance) {
        this.nom = nom;
        this.race = race;
        this.repas = repas;
        this.dateNaissance = dateNaissance;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }

    public String getRepas() {
        return repas;
    }

    public void setRepas(String repas) {
        this.repas = repas;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }
}
