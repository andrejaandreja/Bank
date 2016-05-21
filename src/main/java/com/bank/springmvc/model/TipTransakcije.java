package com.bank.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tiptransakcije")
public class TipTransakcije {
    
    @Id
    @Column(name="tiptransakcije_id")
    private int tiptransakcije_id;
    
    @Column(name="vrsta")
    private String vrsta;

    public TipTransakcije() {
    }

    public TipTransakcije(int tiptransakcije_id, String vrsta) {
        this.tiptransakcije_id = tiptransakcije_id;
        this.vrsta = vrsta;
    }

    public int getTiptransakcije_id() {
        return tiptransakcije_id;
    }

    public void setTiptransakcije_id(int tiptransakcije_id) {
        this.tiptransakcije_id = tiptransakcije_id;
    }

    public String getVrsta() {
        return vrsta;
    }

    public void setVrsta(String vrsta) {
        this.vrsta = vrsta;
    } 
    
}
