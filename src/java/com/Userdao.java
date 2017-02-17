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
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
public class Userdao {
    public static int register(User u){
        int i=0;
        Session session=null;
        session=new Configuration().configure().buildSessionFactory().openSession();
        Transaction t=session.beginTransaction();
        i=(Integer)session.save(u);
        t.commit();
        session.close();
        return i;
    }
}
