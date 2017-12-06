package CONTROLLER;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import DAO.database;
import VO.register_vo;

/**
 * Servlet implementation class popupServlet
 */
@WebServlet("/popupServlet")
public class popupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public popupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag1=request.getParameter("flag");
		System.out.println(flag1);
		
		String id=request.getParameter("ppid");
		String fn=request.getParameter("ppfn");
		String ln=request.getParameter("ppln");
		String email=request.getParameter("ppemail");
		String password=request.getParameter("pppw");
		String phone=request.getParameter("pppn");
		String country=request.getParameter("ppcn");
		String usertype=request.getParameter("ppusertype");
			
		System.out.println(id+" "+fn+" "+ln+" "+email+" "+password+" "+phone+" "+country+" "+usertype);
		HttpSession sx=request.getSession();
		String ss=(String)sx.getAttribute("EmailAdd");
		
		register_vo v1=new register_vo();
		v1.setEmail(ss);
	
		database db=new database();
		
		
		if(flag1.equals("delete"))
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/user_details","root","");
				Statement st=con.createStatement();
				st.executeUpdate("delete from user_data where ID="+id);
						
				st.close();
				con.close();
				
				
			}
			catch(Exception e)
			{
					
			}
		}
		
		if(flag1.equals("update"))
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/user_details","root","");
				Statement st=con.createStatement();
				System.out.println("wwee1");
				String url="Update user_data set fname='"+fn+"' , lname='"+ln+"' , email='"+email+"' , password='"+password+"' , phno='"+phone+"' , country='"+country+"' where ID="+id;
				System.out.println(url);
				st.executeUpdate(url);
				
				System.out.println("efw2");
				st.close();
				con.close();
				
			}
			catch(Exception e)
			{
					e.printStackTrace();
			}
		}
		List ls=db.adminSearch(v1);
		sx.setAttribute("list", ls);
		
		response.sendRedirect("Admin/index-1.jsp");
		
		
		
		
	}

}
