/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.controller;

import com.bank.springmvc.model.IDomenskiObjekat;
import com.bank.springmvc.model.Klijent;
import com.bank.springmvc.service.KlijentService;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.json.JSONArray;

/**
 *
 * @author Andreja
 */
@Controller
@RequestMapping("/klijent")
public class KlijentKontroler {

    @Autowired
    KlijentService service;

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy.");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @RequestMapping(value = "/prikazKlijenata", method = RequestMethod.GET)
    public ModelAndView prikazKlijenata(ModelMap model) {
        model.addAttribute("listaKlijenata", service.findAllClients());
        model.addAttribute("view", "klijent/prikazKlijenata");
        ModelAndView modelAndView = new ModelAndView("index", model);
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/json", method = RequestMethod.GET)
    public String json(ModelMap model) {
        List<Klijent> listaKlijenata = service.findAllClients();
        return new JSONArray(listaKlijenata).toString();
    }

    @RequestMapping(value = "/unosKlijenata", method = RequestMethod.GET)
    public ModelAndView unosKlijenata_get(ModelMap model) {
        model.addAttribute("view", "klijent/unosKlijenata");
        ModelAndView modelAndView = new ModelAndView("index", model);
        return modelAndView;
    }

    @RequestMapping(value = "/unosKlijenata", method = RequestMethod.POST)
    public ModelAndView unosKlijenta_post(@ModelAttribute("form") Klijent klijent, ModelMap model) {
        service.saveClient(klijent);
        return prikazKlijenata(model);
    }

    @RequestMapping(value = "detaljiKlijenta/{jmbg}", method = RequestMethod.GET)
    public ModelAndView detalji(@PathVariable String jmbg, ModelMap model) {
        model.addAttribute("klijent", service.findClientByJMBG(jmbg));
        model.addAttribute("view", "klijent/detaljiKlijenta");
        ModelAndView modelAndView = new ModelAndView("index", model);
        return modelAndView;
    }

    @RequestMapping(value = "izmenaKlijenata/{jmbg}", method = RequestMethod.GET)
    public ModelAndView izmena_get(@PathVariable String jmbg, ModelMap model) {
        model.addAttribute("klijent", service.findClientByJMBG(jmbg));
        model.addAttribute("view", "klijent/izmenaKlijenata");
        ModelAndView modelAndView = new ModelAndView("index", model);
        return modelAndView;
    }

    @RequestMapping(value = "izmenaKlijenata/{jmbg}", method = RequestMethod.POST)
    public ModelAndView izmena_post(@PathVariable String jmbg, @ModelAttribute("form") Klijent klijent, ModelMap model) {
        service.updateClient(klijent);
        return prikazKlijenata(model);
    }

    @RequestMapping(value = "brisanjeKlijenata/{jmbg}", method = RequestMethod.GET)
    public ModelAndView brisanje_get(@PathVariable String jmbg, ModelMap model) {
        model.addAttribute("klijent", service.findClientByJMBG(jmbg));
        model.addAttribute("view", "klijent/brisanjeKlijenata");
        ModelAndView modelAndView = new ModelAndView("index", model);
        return modelAndView;
    }

    @RequestMapping(value = "brisanjeKlijenata/{jmbg}", method = RequestMethod.POST)
    public ModelAndView brisanje_Post(@PathVariable String jmbg, ModelMap model) {
        service.deleteClientByJMBG(jmbg);
        return prikazKlijenata(model);
    }

//    @RequestMapping(value="/klijent.do", method=RequestMethod.POST)
//    public ModelAndView doAction(@ModelAttribute Klijent klijent, BindingResult result, @RequestParam String action, ModelMap model){
//        Klijent klijentResult = new Klijent();
//        switch (action.toLowerCase()){
//            case "save": 
//                service.saveClient(klijent);
//                klijentResult = klijent;
//            break;
//            case "update": 
//                service.updateClient(klijent);
//                klijentResult = klijent;
//            break;
//            case "delete": 
//                service.deleteClientByJMBG(klijent.getjmbg());
//                klijentResult = new Klijent();
//            break;
//            case "search": 
//                Klijent searchedKlijent = service.findClientByJMBG(klijent.getjmbg());
//                klijentResult = searchedKlijent != null ? searchedKlijent : new Klijent();
//            break;
//        }
//        model.addAttribute("klijent",klijentResult);
//        return prikazKlijenata(model);
//    }
}
