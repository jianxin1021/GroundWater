package com.water.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.water.utils.MyDBUtils;
import com.water.vo.ViewData;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class DataServlet
 */
@WebServlet(urlPatterns = { "/servlet/DataServlet" })
public class DataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		String methods = request.getParameter("table");  //获得前端传来的数据选择参数
		String json = null;
		if(methods.equals("history")){   //如果为历史数据
			json = this.getHistoryData();
		}
		else{
			json = this.getRealData();
		}
		
		out.print(json);
		out.flush();
	
	}
	
	public String getRealData(){   //获得实时数据
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "select D.CODE, D.DATETIME, D.V1, D.V2, D.V3, D.V4, D.V5, D.V6, S.ADDRESS from N_GROUND_REAL D , N_GROUNDSTATION S where D.CODE = S.CODE";
		ArrayList<ViewData> list = new ArrayList<ViewData>();
		try
		{
			conn = MyDBUtils.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				ViewData v = new ViewData();
				v.setCode(rs.getString("CODE"));
				v.setDate(sdf.format(rs.getDate("DATETIME")));
				v.setV1(rs.getFloat("V1"));
				v.setV2(rs.getFloat("V2"));
				v.setV3(rs.getFloat("V3"));
				v.setV4(rs.getFloat("V4"));
				v.setV5(rs.getFloat("V5"));
				v.setV6(rs.getFloat("V6"));
				v.setAddress(rs.getString("ADDRESS"));
			    list.add(v);
			}	
			JSONArray jsonArr = JSONArray.fromObject(list);
			String json = jsonArr.toString();
			return json;
		}catch(Exception e){
			System.out.println("null");
			e.printStackTrace();
		}
		return null;
	}
	
	public String getHistoryData(){    //获取历史数据
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String sql = "select D.CODE, D.DATETIME, D.V1, D.V2, D.V3, D.V4, D.V5, D.V6, S.ADDRESS from N_GROUNDHISDATA D , N_GROUNDSTATION S where D.CODE = S.CODE";
		ArrayList<ViewData> list = new ArrayList<ViewData>();
		try
		{
			conn = MyDBUtils.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				ViewData v = new ViewData();
				v.setCode(rs.getString("CODE"));
				v.setDate(sdf.format(rs.getDate("DATETIME")));
				v.setV1(rs.getFloat("V1"));
				v.setV2(rs.getFloat("V2"));
				v.setV3(rs.getFloat("V3"));
				v.setV4(rs.getFloat("V4"));
				v.setV5(rs.getFloat("V5"));
				v.setV6(rs.getFloat("V6"));
				v.setAddress(rs.getString("ADDRESS"));
			    list.add(v);
			}	
			JSONArray jsonArr = JSONArray.fromObject(list);
			String json = jsonArr.toString();
			return json;
		}catch(Exception e){
			System.out.println("null");
			e.printStackTrace();
		}
		return null;
	}

}
