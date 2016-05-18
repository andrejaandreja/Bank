/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.service;

import com.bank.springmvc.dao.ClientDao;
import com.bank.springmvc.model.Client;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Andreja
 */
@Service("clientService")
@Transactional
public class ClientServiceImpl implements ClientService {

    @Autowired
    private ClientDao dao;

    public Client findById(int id) {
        return dao.findById(id);
    }

    public void saveClient(Client client) {
        dao.saveClient(client);
    }

    public void updateClient(Client client) {

    }

    public void deleteClientByJMBG(String jmbg) {
        dao.deleteClientByJMBG(jmbg);
    }

    public List<Client> findAllClients() {
        return dao.findAllClients();
    }

    public Client findClientByJMBG(String jmbg) {
       return dao.findClientByJMBG(jmbg);
    }

}
