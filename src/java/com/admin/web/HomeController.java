/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.web;

import com.admin.service.AdminService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author Administrator
 */
@Controller
@SessionAttributes(value = {"msg"}, types = {String.class})
public class HomeController {

    @Autowired
    public AdminService adminService;

    @RequestMapping(value = "index.do")
    public String Index() {
        return "index";
    }

    @RequestMapping(value = "login.do")
    public String Login() {
        return "login";
    }

    @RequestMapping(value = "login_form.do")
    public String Login_form(HttpServletRequest request, Model model) {
        String telephone = request.getParameter("telephone");
        String password = request.getParameter("password");
        try {
            if (adminService.Login_Service(telephone, password)) {
                model.addAttribute("telephone", telephone);
                return "/index";
            } else {
                return "/error";
            }
        } catch (Exception e) {
            return "/error";
        }
    }

    @RequestMapping(value = "add_food_form.do", method = RequestMethod.POST)
    public String Add_food(@RequestParam String brand, @RequestParam String proname, @RequestParam String lable) {
        adminService.Add_food_Service(brand, proname, lable);
        return "success";
    }

    @RequestMapping(value = "add_man_form.do", method = RequestMethod.POST)
    public String Add_man(@RequestParam String name, @RequestParam String type, @RequestParam String telephone, @RequestParam String authority) {
        adminService.Add_man_Service(name, type, telephone, authority);
        return "success";
    }

    @RequestMapping(value = "delete_goods.do")
    public String Delete_goods(Model model) {
        model.addAttribute("goods", adminService.List_goods_Service());
        return "delete_goods";
    }

    @RequestMapping(value = "delete_man.do")
    public String Delete_man(Model model) {
        model.addAttribute("man", adminService.List_man_Service());
        return "delete_man";
    }

    @RequestMapping(value = "delete_g.do")
    public String Delete_g(@RequestParam("id") String id) {
        String sql = "DELETE FROM goods WHERE id=?";
        boolean result;
        result = adminService.Delete_GoodsOrMan_Service(id, sql);
        if (result) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "delete_m.do")
    public String Delete_m(@RequestParam("id") String id) {
        String sql = "DELETE FROM man WHERE id=?";
        boolean result;
        result = adminService.Delete_GoodsOrMan_Service(id, sql);
        if (result) {
            return "success";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "add_goods.do")
    public String Adm(Model model) {
        model.addAttribute("goods", adminService.List_goods_Service());
        return "add_goods";
    }
    @RequestMapping(value = "add_man.do")
    public String Adg(Model model) {
        model.addAttribute("man", adminService.List_man_Service());
        return "add_man";
    }
}
