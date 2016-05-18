/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.controller;

import com.bank.springmvc.model.Client;
import com.bank.springmvc.service.ClientService;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Andreja
 */
@Controller
@RequestMapping("/")
public class AppController {

    @Autowired
    ClientService service;

    /*
     * This method will list all existing employees.
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView prikazKlijenata(ModelMap model) {
            model.addAttribute("listaKlijenata", service.findAllClients());
            model.addAttribute("view", "klijent/prikazKlijenata");
        ModelAndView modelAndView = new ModelAndView("index", model);
        return modelAndView;
    }
    
    @RequestMapping(value="/client.do", method=RequestMethod.POST)
    public ModelAndView doAction(@ModelAttribute Client client, BindingResult result, @RequestParam String action, ModelMap model){
        Client clientResult = new Client();
        switch (action.toLowerCase()){
            case "save": 
                service.saveClient(client);
                clientResult = client;
            break;
            case "update": 
                service.updateClient(client);
                clientResult = client;
            break;
            case "delete": 
                service.deleteClientByJMBG(client.getjmbg());
                clientResult = new Client();
            break;
            case "search": 
                Client searchedClient = service.findClientByJMBG(client.getjmbg());
                clientResult = searchedClient != null ? searchedClient : new Client();
            break;
        }
        model.addAttribute("client",clientResult);
        return prikazKlijenata(model);
    }
      
}
