/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Andreja
 */
@Entity
@Table(name="klijent")
public class Client {
    
    @Id
    @Column(name="jmbg")
    String jmbg;
    @Column(name="ime")
    String ime;
    @Column(name="prezime")
    String prezime;
    @Column(name="adresa")
    String adresa;
    @Column(name="email")
    String email;
    @Column(name="datumRodjenja")
    Date datumRodjenja;

    public Client() {
    }

    public Client(String jmbg, String ime, String prezime, String adresa, String email, Date datumRodjenja) {
        this.jmbg = jmbg;
        this.ime = ime;
        this.prezime = prezime;
        this.adresa = adresa;
        this.email = email;
        this.datumRodjenja = datumRodjenja;
    }

    public String getjmbg() {
        return jmbg;
    }

    public void setjmbg(String jmbg) {
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
}
