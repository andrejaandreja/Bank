package com.bank.springmvc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class User implements IDomenskiObjekat {

    private String username;
    private String password;
    private boolean stanje;

    public User(String username, String password) {
        this.username = username;
        this.password = password;
        stanje = false;
    }

    public User() {
    }

    @Override
    public String vratiNazivTabele() {
        return "user";
    }

    @Override
    public String vratiVrednostzaInsert() {
        return "'" + username + "'," + password;
    }

    @Override
    public List<IDomenskiObjekat> vratiListuNaOsnovuRS(ResultSet rs) {
        List<IDomenskiObjekat> listaUsera = new ArrayList<>();
        try {
            while (rs.next()) {
                User u = new User(rs.getString("username"), rs.getString("password"));
                listaUsera.add(u);
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaUsera;
    }

    @Override
    public String vratiVrednostZaUpdate() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return username + " " + password;
    }

    public boolean isStanje() {
        return stanje;
    }

    public void setStanje(boolean stanje) {
        this.stanje = stanje;
    }

    @Override
    public String vratiVrednostzaDelete() {
        return null;
    }

    @Override
    public String vratiNazivTabeleInsert() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override
    public String vratiNazivTabeleUslov() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String vratiSETzaUPDATE(IDomenskiObjekat ido) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String vratiUslovZaWhere(IDomenskiObjekat ido) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String vratiSQLZaDetalje(IDomenskiObjekat ido) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public IDomenskiObjekat vratiObjekatNaOsnovuRS(ResultSet rs) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
