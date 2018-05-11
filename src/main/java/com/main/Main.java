package com.main;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Customer;
import com.entity.Item;
import com.util.HibernateUtility;

public class Main {
    public static void main(String[] args) {
       Main main=new Main();
       main.insertQuery();
    }
    
    
    void selectLeftQuery() {
    	 SessionFactory factory = HibernateUtility.getSessionFactory();
         Session session = factory.openSession();
         Query qry= session.createQuery("select c.customerName, c.customerCity, i.itemName,i.price from Customer c "
                 + "right join c.items i");
         List l = qry.list();
         Iterator it=l.iterator();
         while(it.hasNext())
         {
             Object rows[] = (Object[])it.next();
             System.out.println(rows[0]+ " -- " +rows[1] + "--"+rows[2]+"--"+rows[3]);
         }
         session.clear();
         session.close();
         factory.close();
    }
    
    void insertQuery() {
    	SessionFactory factory = HibernateUtility.getSessionFactory();
        Session session = factory.openSession();
        
        Item item=new Item();
        item.setItemId(1005);
        item.setItemName("Pencil");
        item.setPrice(200);
        Customer customer=new Customer();
        customer.setCustomerId(108);
        customer.setCustomerName("Sivansh");
        customer.setCustomerCity("Bangalore");
       List<Item> items=new ArrayList<Item>();
       items.add(item);
       customer.setItems(items);
       Transaction tr=session.beginTransaction();
       session.save(customer);
       tr.commit();
       session.close();
       factory.close();
       
        
    	
    }
}
