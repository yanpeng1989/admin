/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.service;

import com.admin.dao.AdminDAO;
import java.util.List;
import model.Goods;
import model.Man;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class AdminService {

    @Autowired
    public AdminDAO adminDAO;

    public boolean Login_Service(String telephone, String password) {
        return adminDAO.Login_Msg(telephone, password);
    }

    public void Add_food_Service(String brand, String proname, String lable) {
        adminDAO.Add_food(brand, proname, lable);
    }

    public void Add_man_Service(String name, String type, String telephone, String authority) {
        adminDAO.Add_man(name, type, telephone, authority);
    }

    public List<Man> List_man_Service() {
        return adminDAO.List_man();
    }

    public List<Goods> List_goods_Service() {
        return adminDAO.List_goods();
    }

    public boolean Delete_GoodsOrMan_Service(String id, String sql) {
        return adminDAO.Delete_GoodsOrMan(id, sql);
    }
}
