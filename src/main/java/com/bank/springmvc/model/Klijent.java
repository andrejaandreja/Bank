/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.model;

import java.sql.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.springframework.context.annotation.Lazy;

/**
 *
 * @author Andreja
 */
@Entity
@Table(name = "klijent")
public class Klijent {

    @Id
    @Column(name="klijent_id")
    private int klijent_id;
    
    @Column(name = "jmbg")
    private String jmbg;
    
    @Column(name = "ime")
    private String ime;
    
    @Column(name = "prezime")
    private String prezime;
    
    @Column(name = "adresa")
    private String adresa;
    
    @Column(name = "email")
    private String email;
    
    @Column(name = "datumRodjenja")
    private Date datumRodjenja;
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "klijent")
    private List<Racun> pregledRacunaList;

    public Klijent() {
    }

    public Klijent(int klijent_id, String jmbg, String ime, String prezime, String adresa, String email, Date datumRodjenja, List<Racun> pregledRacunaList) {
        this.klijent_id = klijent_id;
        this.jmbg = jmbg;
        this.ime = ime;
        this.prezime = prezime;
        this.adresa = adresa;
        this.email = email;
        this.datumRodjenja = datumRodjenja;
        this.pregledRacunaList = pregledRacunaList;
    }

    public int getKlijent_id() {
        return klijent_id;
    }

    public void setKlijent_id(int klijent_id) {
        this.klijent_id = klijent_id;
    }

    public String getJmbg() {
        return jmbg;
    }

    public void setJmbg(String jmbg) {
        this.jmbg = jmbg;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getAdresa() {
        return adresa;
    }

    public void setAdresa(String adresa) {
        this.adresa = adresa;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDatumRodjenja() {
        return datumRodjenja;
    }

    public void setDatumRodjenja(Date datumRodjenja) {
        this.datumRodjenja = datumRodjenja;
    }

    public List<Racun> getPregledRacunaList() {
        return pregledRacunaList;
    }

    public void setPregledRacunaList(List<Racun> pregledRacunaList) {
        this.pregledRacunaList = pregledRacunaList;
    }    
    
}