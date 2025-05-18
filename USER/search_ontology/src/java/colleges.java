/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Perumal S
 */
public class colleges extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	String a1=request.getParameter("a1");
		String a2=request.getParameter("a2");
		String a3=request.getParameter("a3");
                String a4=request.getParameter("a4");
		ArrayList b1=new ArrayList();
		try {
			int flag = 0;

			String url = "jdbc:mysql://localhost:3306/edu";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st1=(Statement) con.createStatement();
                        if(request.getParameter("s1")!=null){
                      	request.setAttribute("ok", "1");
                        	request.setAttribute("a", a1);
			RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("ctype.jsp");
				requestDispatcher.forward(request, response);
                        }else if(request.getParameter("s2")!=null){
                        
					request.setAttribute("ok", "1");
                        		request.setAttribute("a", a1);
                                request.setAttribute("b", a2);
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("ccollege.jsp");
				requestDispatcher.forward(request, response);
			}else if(request.getParameter("s3")!=null){
                        
					request.setAttribute("ok", "1");
			request.setAttribute("c", a3);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("applyforcollege.jsp");
				requestDispatcher.forward(request, response);
			}
                        }
    
			
			
			
			
			
		 catch (Exception e) {
			out.println(e);
		}
 finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
