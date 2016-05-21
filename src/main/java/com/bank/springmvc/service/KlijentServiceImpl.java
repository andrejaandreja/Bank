/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.service;

import com.bank.springmvc.dao.KlijentDao;
import com.bank.springmvc.model.Klijent;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Andreja
 */
@Service("klijentService")
@Transactional
public class KlijentServiceImpl implements KlijentService {

    @Autowired
    private KlijentDao dao;

    public Klijent findById(int id) {
        return dao.findById(id);
    }

    public void saveClient(Klijent klijent) {
        dao.saveClient(klijent);
    }

    public void updateClient(Klijent klijent) {

    }

    public void deleteClientByJMBG(String jmbg) {
        dao.deleteClientByJMBG(jmbg);
    }

    public List<Klijent> findAllClients() {
        return dao.findAllClients();
    }

    public Klijent findClientByJMBG(String jmbg) {
       return dao.findClientByJMBG(jmbg);
    }

}
