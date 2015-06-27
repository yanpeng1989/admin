/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.web;

import com.admin.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Administrator
 */
@Controller
@RequestMapping(value = "/model")
public class ModelController {
    @Autowired
    public AdminService adminService;
    
    @RequestMapping(value = "blank.do")
    public String Blank(){
        return "/model/blank";
    }
    @RequestMapping(value = "calendar.do")
    public String Calendar(){
        return "/model/calendar";
    }
    @RequestMapping(value = "chart.do")
    public String Chart(){
        return "/model/chart";
    }
    @RequestMapping(value = "error.do")
    public String Error(){
        return "/model/error";
    }
    @RequestMapping(value = "form.do")
    public String Form(){
        return "/model/form";
    }
    @RequestMapping(value = "gallery.do")
    public String Gallery(){
        return "/model/gallery";
    }
    @RequestMapping(value = "icon.do")
    public String Icon(){
        return "icon";
    }
    @RequestMapping(value = "index.do")
    public String Index(){
        return "/model/index";
    }
    @RequestMapping(value = "login.do")
    public String Login(){
        return "/model/login";
    }
    @RequestMapping(value = "table.do")
    public String Table(){
        return "/model/table";
    }
    @RequestMapping(value = "tour.do")
    public String Tour(){
        return "/model/tour";
    }
    @RequestMapping(value = "typography.do")
    public String Typography(){
        return "/model/typography";
    }
    @RequestMapping(value = "ui.do")
    public String Ui(){
        return "/model/ui";
    }
}
