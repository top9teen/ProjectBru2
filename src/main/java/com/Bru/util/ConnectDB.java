package com.Bru.util;

import java.sql.Connection;
import java.sql.DriverManager;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;


public class ConnectDB {

	
	public Connection openConnect() {
		Connection connect = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			/*connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1/projectdb2?useUnicode=true&characterEncoding=utf-8" + "?user=root&password=");*/

			connect = DriverManager.getConnection("jdbc:mysql:///Agentdb?useUnicode=true&characterEncoding=utf-8", "root", "");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return connect;
	}
	
/*	public static void main(String[] args) {
	ConnectDB con = new ConnectDB();
	Connection connect = null;
	connect = con.openConnect();
	if (connect != null) {
		System.out.println(connect);
	} else {
		System.out.println("Database Connect Failed.");
	}
}*/

	//  แบ่งสัปดา
/*	public static void main(String[] args) {
		 DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

	        String date = "20/10/2018";


        LocalDate today = LocalDate.parse(date, formatter);
     
		
        System.out.println("Current date: " + today);
        System.out.println(formatter.format(today));
        //add 2 week to the current date
        LocalDate next2Week = today.plus(1, ChronoUnit.WEEKS);
        System.out.println("Next week: " + next2Week);
    }*/
	// End Class
}
