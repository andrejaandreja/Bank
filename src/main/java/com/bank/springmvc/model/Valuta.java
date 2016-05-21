package com.bank.springmvc.model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "valuta")
public class Valuta {

    @Id
    @Column(name = "valuta_id")
    private int valuta_id;

    @Column(name = "naziv")
    private String naziv;

    @Column(name = "simbol")
    private String simbol;

    public Valuta() {
    }

    public Valuta(int valuta_id, String naziv, String simbol) {
        this.valuta_id = valuta_id;
        this.naziv = naziv;
        this.simbol = simbol;
    }

    public int getValuta_id() {
        return valuta_id;
    }

    public void setValuta_id(int valuta_id) {
        this.valuta_id = valuta_id;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public String getSimbol() {
        return simbol;
    }

    public void setSimbol(String simbol) {
        this.simbol = simbol;
    }

}
