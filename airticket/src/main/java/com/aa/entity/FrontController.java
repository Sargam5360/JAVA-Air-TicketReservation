package com.aa.entity;

import java.util.List;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aa.dao.ManageFlights;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

//localhost:9090/SpringMvcDemo/rsa/home.do

@Controller
@RequestMapping(value="/rsa")
public class FrontController {
	
	//localhost:9090/SpringMvcDemo/rsa/home.do
	@RequestMapping(value="/flightdata", method = RequestMethod.GET)
	public String welcome()
	{
		return "flightdata";
	}
	
	 
	//localhost:9090/SpringMvcDemo/rsa/display.do
	@RequestMapping(value="/display", method=RequestMethod.POST)
	public ModelAndView processLogin(@RequestParam String from, HttpServletResponse response)
	{
		ModelAndView mv = new ModelAndView();
	 	if(from != null)
		{
	 	     ManageFlights MFG =  new ManageFlights(); 
	 		 List flights =  MFG.listFlights(from);  	
			
			mv.setViewName("display");
			mv.addObject("logintime", from + " :: " +System.currentTimeMillis());
			mv.addObject("flights",flights);	
		} 
		return mv;
	}

	
	@RequestMapping(value="/book", method=RequestMethod.POST)
	public ModelAndView bookFlight(@RequestParam String rad, HttpServletResponse response)
	{
		ModelAndView mv = new ModelAndView();
		 
			mv.setViewName("book");
		 	mv.addObject("book1", rad);
			 
		return mv;
	}
	
	
	@RequestMapping(value="/payment", method=RequestMethod.POST)
	public ModelAndView paymentFlight(@RequestParam String flightid,@RequestParam String pnum,@RequestParam String page,@RequestParam String pname, HttpServletResponse response)
	{
		ModelAndView mv = new ModelAndView();
		 
		
	    ManageFlights MF =  new ManageFlights(); 
	    Flight flight =  MF.getFlightDetials(flightid);

			mv.setViewName("payment");
		 	mv.addObject("name", pname);
		 	mv.addObject("age", page);
		 	mv.addObject("number", pnum);
		 	mv.addObject("flightcost", flight.getCost());
 
		return mv;
	}

 


}
