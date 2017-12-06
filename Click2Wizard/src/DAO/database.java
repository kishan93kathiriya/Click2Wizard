package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.cre_pro_vo;
import VO.register_vo;

public class database {
	
	public List search(cre_pro_vo v)
	{
		List ls=new ArrayList<cre_pro_vo>();
		try
		{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/user_data","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SHOW DATABASES");
		
		while(rs.next())
		{
			String x=rs.getString("Database");
			if(x.equals("information_schema") || x.equals("performance_schema") || x.equals("mysql") || x.equals("user_details") || x.equals("user_data"))
			{
				System.out.println("If Loop");
			}
			else
			{
				System.out.println("Else");
				cre_pro_vo v1=new cre_pro_vo();
				v1.setPro_name(rs.getString("Database"));
				
				ls.add(v1);
			
			}
		}
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		return ls;
	}
	
	public List adminSearch(register_vo v)
	{
		List ls=new ArrayList<>();
		try
		{

			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/user_details","root","");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from user_data");
			
			while(rs.next())
			{
				register_vo v1=new register_vo();
				
				v1.setEmail(rs.getString("email"));
				v1.setId(rs.getInt("ID"));
				v1.setFn(rs.getString("fname"));
				v1.setLn(rs.getString("lname"));
				v1.setPw(rs.getString("password"));
				v1.setCn(rs.getString("country"));
				v1.setUsertype(rs.getString("usertype"));
				v1.setQue(rs.getString("que"));
				v1.setAns(rs.getString("ans"));
				v1.setPn(rs.getString("phno"));
				ls.add(v1);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("xx");
		}
		return ls;
	}
	
	public void insert(cre_pro_vo v)
	{
		try
		{
			System.out.println("in db");
			System.out.println(v.getPro_name());
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/user_data","root","");
			Statement st=con.createStatement();
			st.executeUpdate("insert into details_db(ProjectName,Data_size) values('"+v.getPro_name()+"','')");
			System.out.println("Project Name inserted");
			
			st.close();
			con.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
	}
	
	public void create(cre_pro_vo v) 
	{
		
		// JDBC driver name and database URL
		String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		String DB_URL = "jdbc:mysql://localhost/";
	
		//  Database credentials
		String USER = "root";
		final String PASS = "";
		
		Connection conn = null;
		Statement stmt = null;
		try
		{
			//STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");
	   
			//STEP 3: Open a connection
			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
	
			//STEP 4: Execute a query
			System.out.println("Creating database...");
			stmt = conn.createStatement();
			
			String s1=v.getPro_name();
			
			
			String sql = "CREATE DATABASE " +s1;
			
			stmt.executeUpdate(sql);
			System.out.println("Database created successfully...");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/"+s1, USER, PASS);
			Statement st = conn.createStatement();
			st.executeUpdate("CREATE TABLE details_tables (tbl_name VARCHAR(255))");
		}
		catch(Exception e)
		{
			//Handle errors for Class.forName
			e.printStackTrace();
		}
		finally
		{
			//finally block used to close resources
			try
			{
				if(stmt!=null)
				stmt.close();
			}
			catch(SQLException se2)
			{
			}// nothing we can do
			try
			{
				if(conn!=null)
				conn.close();
			}
			catch(SQLException se)
			{
				se.printStackTrace();
			}//end finally try
		}//end try
	
		System.out.println("Goodbye!");
	}
}
