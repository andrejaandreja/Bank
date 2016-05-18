/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.dao;

import com.bank.springmvc.model.Client;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Andreja
 */
@Repository("clientDao")
public class ClientDaoImpl extends AbstractDao<Integer, Client> implements ClientDao{

    public Client findById(int id) {
        return getByKey(id);
    }

    public void saveClient(Client client) {
        persist(client);
    }

    public void deleteClientByJMBG(String jmbg) {
        Query query = getSession().createSQLQuery("delete from Klijent where jmbg = :jmbg");
        query.setString("jmbg", jmbg);
        query.executeUpdate();
    }

    @SuppressWarnings("unchecked")
    public List<Client> findAllClients() {
        Criteria criteria = createEntityCriteria();
        return (List<Client>) criteria.list();
    }

    public Client findClientByJMBG(String jmbg) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("jmbg", jmbg));
        return (Client) criteria.uniqueResult();
    }
    
}
