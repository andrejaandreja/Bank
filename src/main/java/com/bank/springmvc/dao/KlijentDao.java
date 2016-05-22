/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.dao;

import com.bank.springmvc.model.Klijent;
import java.util.List;

/**
 *
 * @author Andreja
 */
public interface KlijentDao {
    
    Klijent findById(int id);
 
    void saveClient(Klijent client);
     
    void deleteClientById(int klijent_id);
     
    List<Klijent> findAllClients();
 
    Klijent findClientById(int klijent_id);
}
