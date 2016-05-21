/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Andreja
 */
@Controller
public class MainKontroler {

    @RequestMapping(value = "/")
    public String welcome() {
        return "redirect:/klijent/prikazKlijenata";
    }
    
}
