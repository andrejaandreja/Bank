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
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="transakcija")
public class Transakcija{
    
    @Id
    @GeneratedValue
    @Column(name="transakcija_id")
    private int transakcija_id;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="tiptransakcije_id")
    private TipTransakcije tipTransakcije;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="racun_id")
    private Racun racun;
    
    @Column(name="datumKreiranja")
    private Date datumKreiranja;    
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="valuta_id")
    private Valuta valuta;
    
    @Column(name="iznos")
    private String iznos;    

    public Transakcija() {
    }

    public Transakcija(int transakcija_id, TipTransakcije tipTransakcije, Racun racun, Date datumKreiranja, Valuta valuta, String iznos) {
        this.transakcija_id = transakcija_id;
        this.tipTransakcije = tipTransakcije;
        this.racun = racun;
        this.datumKreiranja = datumKreiranja;
        this.valuta = valuta;
        this.iznos = iznos;
    }

    public int getTransakcija_id() {
        return transakcija_id;
    }

    public void setTransakcija_id(int transakcija_id) {
        this.transakcija_id = transakcija_id;
    }

    public TipTransakcije getTipTransakcije() {
        return tipTransakcije;
    }

    public void setTipTransakcije(TipTransakcije tipTransakcije) {
        this.tipTransakcije = tipTransakcije;
    }

    public Racun getRacun() {
        return racun;
    }

    public void setRacun(Racun racun) {
        this.racun = racun;
    }

    public Date getDatumKreiranja() {
        return datumKreiranja;
    }

    public void setDatumKreiranja(Date datumKreiranja) {
        this.datumKreiranja = datumKreiranja;
    }

    public Valuta getValuta() {
        return valuta;
    }

    public void setValuta(Valuta valuta) {
        this.valuta = valuta;
    }

    public String getIznos() {
        return iznos;
    }

    public void setIznos(String iznos) {
        this.iznos = iznos;
    }   
    
}
