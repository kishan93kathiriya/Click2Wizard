package CONTROLLER;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class popupServlet1
 */
@WebServlet("/popupServlet1")
public class popupServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public popupServlet1() {
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
		System.out.println(id+fn+ln+email+password+phone+country+usertype);
		
	}

}
