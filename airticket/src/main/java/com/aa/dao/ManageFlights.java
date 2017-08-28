package com.aa.dao;
import java.util.List; 

import java.util.Iterator;

import org.hibernate.HibernateException; 
import org.hibernate.Session; 
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.aa.entity.Flight;

public class ManageFlights {
	 private static SessionFactory factory; 
	 
	 public static void main(String[] args) {
	     
	      ManageFlights MF =  new ManageFlights(); 
 		  MF.listFlights("DFW");  
	       
	 }  
	 
	   /* Method to  READ all the flights */
 	public List listFlights(String source ){
 		
 		 try{
	         factory = new Configuration().configure().buildSessionFactory();
	      }catch (Throwable ex) { 
	         System.err.println("Failed to createa sessionFactory object." + ex);
	         throw new ExceptionInInitializerError(ex); 
	      }
 		
	      Session session = factory.openSession();
	      Transaction tx = null;
	      List  flights = null;
	      try{
	         tx = session.beginTransaction();
	         String hql = "FROM Flight WHERE source = '"+ source +"' ";
	           flights = session.createQuery(hql).list(); 
	         for (Iterator iterator = flights.iterator(); iterator.hasNext();){
	            Flight flight = (Flight) iterator.next(); 
	            System.out.print("  From: " + flight.getSource()); 
	            System.out.print(" To: " + flight.getDestination()); 
	            System.out.println("  Seats: " + flight.getTickets()); 
	         }
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	      
	    return flights;
	   }

	public Flight getFlightDetials(String flightid) {
		
		Flight f = null;
		 try{
	         factory = new Configuration().configure().buildSessionFactory();
	      }catch (Throwable ex) { 
	         System.err.println("Failed to createa sessionFactory object." + ex);
	         throw new ExceptionInInitializerError(ex); 
	      }
 		
	      Session session = factory.openSession();
	      Transaction tx = null;
 	      try{
	         tx = session.beginTransaction();
	         String hql = "FROM Flight WHERE id = '"+ flightid +"' ";
	           f = (Flight) session.createQuery(hql).uniqueResult(); 
	         
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	      
  		return f;
 		
	}
	      
}
