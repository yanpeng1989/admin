/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Goods;
import model.Man;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public class AdminDAO {

    @Autowired
    public JdbcTemplate jdbcTemplate;

    public boolean Login_Msg(String telephone, String password) {
        String sql = "SELECT SUM(id) FROM man WHERE telephone=? AND authority=?";
        try {
            int sum = jdbcTemplate.queryForObject(sql, new Object[]{telephone, password}, Integer.class);
            if (sum > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            return false;
        }
    }

    public void Add_food(final String brand, final String proname, final String lable) {
        try {
            jdbcTemplate.update("insert into goods(brand,proname,label) values(?,?,?)",
                    new PreparedStatementSetter() {
                        @Override
                        public void setValues(PreparedStatement ps) throws SQLException {
                            ps.setString(1, brand);
                            ps.setString(2, proname);
                            ps.setString(3, lable);
                        }
                    });
        } catch (Exception e) {
            System.out.println("Add_food");
        }
    }

    public void Add_man(final String name, final String type, final String telephone, final String authority) {
        try {
            jdbcTemplate.update("insert into man(name,type,telephone,authority) values(?,?,?,?)",
                    new PreparedStatementSetter() {
                        @Override
                        public void setValues(PreparedStatement ps) throws SQLException {
                            ps.setString(1, name);
                            ps.setString(2, type);
                            ps.setString(3, telephone);
                            ps.setString(4, authority);
                        }
                    });
        } catch (Exception e) {
            System.out.println("Add_food");
        }
    }

    public List<Goods> List_goods() {
        final List<Goods> list_goods = new ArrayList<>();
        try {
            jdbcTemplate.query("select id,brand,proname,label from goods",
                    new RowCallbackHandler() {
                        @Override
                        public void processRow(ResultSet rs) throws SQLException {
                            Goods gds = new Goods();
                            gds.setId(rs.getInt("id"));
                            gds.setBrand(rs.getString("brand"));
                            gds.setProname(rs.getString("proname"));
                            gds.setLabel(rs.getString("label"));
                            list_goods.add(gds);
                        }
                    });
            return list_goods;
        } catch (Exception e) {
            return null;
        }
    }

    public List<Man> List_man() {
        final List<Man> list_man = new ArrayList<>();
        try {
            jdbcTemplate.query("select id,name,telephone,type,authority from man",
                    new RowCallbackHandler() {
                        @Override
                        public void processRow(ResultSet rs) throws SQLException {
                            Man gds = new Man();
                            gds.setId(rs.getInt("id"));
                            gds.setName(rs.getString("name"));
                            gds.setTelephone(rs.getString("telephone"));
                            gds.setType(rs.getString("type"));
                            gds.setAuthority(rs.getString("authority"));
                            list_man.add(gds);
                        }
                    });
            return list_man;
        } catch (Exception e) {
            return null;
        }
    }

    public boolean Delete_GoodsOrMan(String id, String sql) {
        try {
            jdbcTemplate.update(sql, new Object[]{id});
            return true;
        } catch (Exception e) {
            return false;
        }
    }

}
