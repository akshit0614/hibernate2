/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;

/**
 *
 * @author mca1
 */
public class User {
     private int id;
    private String name,password;
    //getters and setters
    public int getId(){
        return id;
    }
    public void setId(int no){
        this.id=no;
    }
    public String getName(){
        return name;
    }
    public void setName(String names){
        this.name=names;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String pass){
        this.password=pass;
    }
}
