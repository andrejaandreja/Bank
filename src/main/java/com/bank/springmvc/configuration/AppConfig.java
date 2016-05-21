/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bank.springmvc.configuration;

import java.awt.image.TileObserver;
import java.util.Properties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.mvc.ParameterizableViewController;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;

/**
 *
 * @author Andreja
 */
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.bank.springmvc")
public class AppConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**")
                .addResourceLocations("/resources/");
    }

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setViewClass(JstlView.class);
        viewResolver.setPrefix("/WEB-INF/jsps/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

//    @Bean
//    public ViewResolver viewResolver() {
//        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
//        viewResolver.setViewClass(UrlBasedViewResolver.class);
//        Properties props = new Properties();
//        props.put("viewClass", "org.springframework.web.servlet.view.tiles3.TilesView");
//        viewResolver.setAttributes(props);
//        return viewResolver;
//    }

//    @Bean
//    public TilesConfigurer tilesConfigurer() {
//        TilesConfigurer configurer = new TilesConfigurer();
//        // "/WEB-INF/jsps/**/tiles.xml"
//        configurer.setDefinitions(new String[]{"/WEB-INF/defs/general.xml"});
//        configurer.setCheckRefresh(true);
//        return configurer;
//    }
//
//    @Bean
//    public ParameterizableViewController viewController() {
//        ParameterizableViewController viewController
//                = new ParameterizableViewController();
//        viewController.setViewName("index");
//        return viewController;
//    }
}
