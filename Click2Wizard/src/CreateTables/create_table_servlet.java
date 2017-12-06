package cre_tbl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cre_pro.cre_pro_dao;

@WebServlet("/cre_tbl_servlet")
public class cre_tbl_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public cre_tbl_servlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String flag=request.getParameter("flag");
		System.out.println("HAHAHAHA"+flag);
		if(flag.equals("create"))
		{
			String s = request.getParameter("tbl_name");
			System.out.println("table_name" +s);
			
			String s1 = request.getParameter("pro_name").toLowerCase();
			System.out.println(s1);
			
			cre_tbl_vo cre=new cre_tbl_vo();
			cre.setPro_name(s1);
			cre.setTbl_name(s);
			System.out.println(cre.getPro_name()+cre.getTbl_name());
			
			cre_tbl_dao cre1=new cre_tbl_dao();
			cre1.create(cre);
			System.out.println("Table created");
			cre1.insert(cre);
			System.out.println("table name"+cre.getTbl_name()+" inserted");
			
			List ls=cre1.search(cre);
			System.out.println(cre.getTbl_name()+" table name Searched");
			
			HttpSession ss=request.getSession();
			ss.setAttribute("list", ls);
			
			
			response.sendRedirect("Click 2 Wizard/pro1.jsp");
		}
		if(flag.equals("goin"))
		{
			String s=request.getParameter("tbl_name"); 
			System.out.println("Go In");
    		HttpSession session=request.getSession();
			session.setAttribute("table_name", s);
			response.sendRedirect("Click 2 Wizard/pro1_t1_structure.jsp");
		}
		
	}

}
