package com.water.utils;

import java.sql.Connection;
import java.sql.SQLException;

public class MyDBUtils {  //获取connection对象类
	
	
	public static Connection getConnection(){
		Connection con = null;  
		String databaseURL ="jdbc:firebirdsql://localhost:3050/G:\\LENNY.FDB";
		String user = "SYSDBA";
		String password = "masterkey";
		try {
			Class.forName("org.firebirdsql.jdbc.FBDriver");
			con = java.sql.DriverManager.getConnection(databaseURL, user, password);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

}
