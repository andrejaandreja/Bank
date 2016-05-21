package com.bank.springmvc.model;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="racun")
public class Racun{

    @Id
    @Column(name="racun_id")
    private int racun_id;       
    
    @Column(name="brojRacuna")
    private String brojRacuna;
    
    @Column(name="datumKreiranja")
    private Date datumKreiranja;
    
    @Column(name="vrstaRacuna")
    private String vrstaRacuna;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="klijent_id")
    private Klijent klijent;
    
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "racun")
    private List<Transakcija> listaTransakcije;

    public Racun() {
    }

    public Racun(int racun_id, String brojRacuna, Date datumKreiranja, String vrstaRacuna, Klijent klijent) {
        this.racun_id = racun_id;
        this.brojRacuna = brojRacuna;
        this.datumKreiranja = datumKreiranja;
        this.vrstaRacuna = vrstaRacuna;
        this.klijent = klijent;
    }

    public int getRacun_id() {
        return racun_id;
    }

    public void setRacun_id(int racun_id) {
        this.racun_id = racun_id;
    }

    public String getBrojRacuna() {
        return brojRacuna;
    }

    public void setBrojRacuna(String brojRacuna) {
        this.brojRacuna = brojRacuna;
    }

    public Date getDatumKreiranja() {
        return datumKreiranja;
    }

    public void setDatumKreiranja(Date datumKreiranja) {
        this.datumKreiranja = datumKreiranja;
    }

    public String getVrstaRacuna() {
        return vrstaRacuna;
    }

    public void setVrstaRacuna(String vrstaRacuna) {
        this.vrstaRacuna = vrstaRacuna;
    }

    public Klijent getKlijent() {
        return klijent;
    }

    public void setKlijent(Klijent klijent) {
        this.klijent = klijent;
    }

    public List<Transakcija> getListaTransakcije() {
        return listaTransakcije;
    }

    public void setListaTransakcije(List<Transakcija> listaTransakcije) {
        this.listaTransakcije = listaTransakcije;
    }      

}
