package CONTROLLER;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.classic.Session;

import cre_tbl.cre_tbl_dao;
import cre_tbl.cre_tbl_vo;
import project.pro_bord_vo;
import DAO.database;
import DAO.register_dao;
import VO.cre_pro_vo;
import VO.register_vo;
import signup.signup_dao;
import signup.signup_vo;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Servlet() {
        super();
   
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("eee");
	

		String flag1=request.getParameter("flag");
		
		System.out.println(flag1);
		if(flag1.equals("cre_pro"))
		{
			String s = request.getParameter("pro_name");
			System.out.println(s);

			cre_pro_vo cre1=new cre_pro_vo();
			cre1.setPro_name(s);
			
			database cre=new database();
			cre.create(cre1);
			
			cre.insert(cre1);
			
			HttpSession s2=request.getSession();
			List ls=cre.search(cre1);
				
			s2.setAttribute("list", ls);
			response.sendRedirect("Click 2 Wizard/index.jsp");
		}
		
		if(flag1.equals("go_pro"))
		{
			String s = request.getParameter("pro_name");
	    	System.out.println(s);
	    	
	    	pro_bord_vo c=new pro_bord_vo();
	    	c.setPname(s);
	    	
	    	HttpSession s2=request.getSession();
			s2.setAttribute("p", s);
			
			cre_tbl_vo v=new cre_tbl_vo();
			v.setPro_name(s);
			
			cre_tbl_dao d=new cre_tbl_dao();
			List<cre_tbl_vo> ls=d.search(v);
			HttpSession ss=request.getSession();
			ss.setAttribute("list", ls);
			
			response.sendRedirect("Click 2 Wizard/pro1.jsp");
		}
		if(flag1.equals("logout"))
		{
			HttpSession session=request.getSession();
			session.invalidate();
			response.sendRedirect("C2W welcome/index.jsp");
		}
		if(flag1.equals("go_tbl"))
		{
			response.sendRedirect("Click 2 Wizard/pro1_t1_structure.jsp");	
		}
		
	}

}
