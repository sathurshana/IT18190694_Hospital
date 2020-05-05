package com;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Hospital {
	
	private Connection connect() {
		return null;
		
	}
	
	public String insertHospital(String hostID, String teleNo, String hostName, String location) {
		return hostName;
		
	}
	
	public String readHospital() {
		String output = "";
		
		try
		{
			Connection con = connect();
			
			if(con == null)
			{
				return "Error while connecting to the database for reading";
			}
			
			output = "<table border=\"1\"><tr><th>hostID</th><th>teleNo</th><th>hostName</th><th>location</th>"
					+ "<th>Update</th><th>Remove</th>";
			
			String query = "select * from hospital";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				String hostID = Integer.toString(rs.getInt("hostID"));
			}
		}
		
	}
	
	public String updateItem(int hostID, String teleNo, String hostName, String location) {
		return location;
		
	}
	
	public String deleteHospital(String hostID) {
		return hostID;
		
		
	}

}
