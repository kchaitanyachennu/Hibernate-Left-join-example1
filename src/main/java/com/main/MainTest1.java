package com.main;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.util.HibernateUtility;
import com.util.HibernateUtilityTest1;

public class MainTest1 {

    public static void main(String[] args) {
        SessionFactory factory = HibernateUtilityTest1.getSessionFactory();
        Session session = factory.openSession();
        Query qry= session.createQuery("SELECT a.aId,a.fName,a.lName,b.bookId,b.bookName,b.publisherId,"
        		+ " p.pId,p.publisherName FROM Author a left join a.books b"
        		+ " left join b.publishers p");
        
        /*Query qry= session.createQuery("SELECT a.aId,a.fName,a.lName,b.bookName,b.publisherId"
        		+ " FROM Author a left join a.books b");*/
        List l = qry.list();
        Iterator it=l.iterator();
        while(it.hasNext())
        {
            Object rows[] = (Object[])it.next();
            System.out.println(rows[0]+ " -- " +rows[1] + "--"+rows[2]+"--"+rows[3]+ 
            		" -- " +rows[4] + "--"+rows[5]+"--"+rows[6]+
            		" -- " +rows[7] );
        }
        session.clear();
        session.close();
        factory.close();
    }

}
