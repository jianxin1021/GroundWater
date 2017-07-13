package com.water.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.water.utils.MyDBUtils;
import com.water.vo.ViewData;

import net.sf.json.JSONArray;

public class Test {
	
	public static void main(String[] args){
		/*String sql = "select * from B_USER";
		Connection conn = MyDBUtils.getConnection();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				System.out.println("name:" + rs.getString("NAME") + "password:" + rs.getString("PASSWORD"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "select * from B_USER where NAME = '123' and PASSWORD = '123'";
		//select * form B_USER where NAME = '123' and PASSWORD = '123'
		
		try
		{
			conn = MyDBUtils.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if(rs!=null)
			{
				System.out.println(true);
			}
			else{
				System.out.println(false);
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
