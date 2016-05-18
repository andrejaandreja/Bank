/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.service;

import com.bank.springmvc.model.Client;
import java.util.List;

/**
 *
 * @author Andreja
 */
public interface ClientService {
    
    Client findById(int id);
     
    void saveClient(Client client);
     
    void updateClient(Client client);
     
    void deleteClientByJMBG(String jmbg);
 
    List<Client> findAllClients(); 
     
    Client findClientByJMBG(String jmbg);
 
}
