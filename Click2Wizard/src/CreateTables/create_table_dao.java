package cre_tbl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import VO.cre_pro_vo;

public class cre_tbl_dao {

	public List search(cre_tbl_vo v)
	{
		List ls=new ArrayList<cre_tbl_vo>();
		try
		{
		
		System.out.println("in search Table");
		String URL="jdbc:mysql://localhost/"+v.getPro_name();
		System.out.println(URL);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(URL,"root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("show tables");
		
		while(rs.next())
		{
				
				System.out.println(rs.getString("Tables_in_"+v.getPro_name()));
				cre_tbl_vo v1=new cre_tbl_vo();
				v1.setTbl_name(rs.getString("Tables_in_"+v.getPro_name()));
				ls.add(v1);
		}
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
		}
		System.out.println("Got it");
		return ls;
	}
	
	public void insert(cre_tbl_vo v)
	{
		try
		{
			System.out.println("in db");
			System.out.println(v.getPro_name());
			System.out.println(v.getTbl_name());
			
			
				
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("1");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/"+v.getPro_name(),"root","");
				Statement st=con.createStatement();
				System.out.println("2");
				System.out.println(v.getPro_name());
				System.out.println(v.getTbl_name());
				
				System.out.println("22");
				System.out.println(v.getTbl_name());
				st.executeUpdate("INSERT INTO details_tables (tbl_name) VALUES ('"+v.getTbl_name()+"')");
				System.out.println("3");
				st.close();
			con.close();
		}
		catch(Exception e)
		{
			
		}
		
		
		
	}
	
	public static void create(cre_tbl_vo c) 
	{
		
		
		String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		String DB_URL = "jdbc:mysql://localhost/"+c.getPro_name();			//here "kk" is database name Important

		//  Database credentials
		String USER = "root";
		String PASS = "";
		   
		
		Connection conn = null;
		Statement stmt = null;
		try
		{
			//STEP 2: Register JDBC driver
			Class.forName("com.mysql.jdbc.Driver");

			//STEP 3: Open a connection
			System.out.println("Connecting to a selected database...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			System.out.println("Connected database successfully...");
			
			//STEP 4: Execute a query
			System.out.println("Creating table in given database...");
			stmt = conn.createStatement();
			
			String sql = "CREATE TABLE "+c.getTbl_name() +
						"(id INTEGER not NULL, " +
		                " first VARCHAR(255), " + 
		                " last VARCHAR(255), " + 
		                " age INTEGER, " + 
		                " PRIMARY KEY ( id ))"; 

			stmt.executeUpdate(sql);
		}
		catch(SQLException se)
		{
			//Handle errors for JDBC
		    se.printStackTrace();
		}
		catch(Exception e)
		{
		    //Handle errors for Class.forName
		    e.printStackTrace();
		}
		finally
		{
			try
		    {
		         if(stmt!=null)
		            conn.close();
		    }
		    catch(SQLException se)
		    {
		    }
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
