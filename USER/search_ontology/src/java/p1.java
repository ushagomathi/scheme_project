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
 * @author ADMIN
 */
public class p1 extends HttpServlet {

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
 
		try {
			 Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/purchases1";
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root");
                 Statement smt=con.createStatement();
                   HttpSession so = request.getSession(true);
       
            String b1=request.getParameter("f1"); 
            String b2=request.getParameter("f2");
            String b3=request.getParameter("f3");String b4=request.getParameter("f4");
              String a2=request.getParameter("a2");
              int v=0,v1=0,v2=0,v3=0;
               System.out.println(a2);
      
               System.out.println(b1);
                        if(request.getParameter("s1")!=null){
             
                        
			RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("u6.jsp");
				requestDispatcher.forward(request, response);
                        }else if(request.getParameter("s2")!=null){
                        
		
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("u9.jsp");
				requestDispatcher.forward(request, response);
			}else if(request.getParameter("v1")!=null){
                        
		
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("u9.jsp");
				requestDispatcher.forward(request, response);
			}else if(request.getParameter("v2")!=null){
                        
		
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("u11.jsp");
				requestDispatcher.forward(request, response);
			}else if(request.getParameter("s3")!=null){
                        
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("u11.jsp");
				requestDispatcher.forward(request, response);
			}else if(request.getParameter("s4")!=null){
                        
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("u6.jsp");
				requestDispatcher.forward(request, response);
			}else  if(b1!=null){
                   ResultSet rs=smt.executeQuery("select * from product where pid='"+b1+"' ");
              if(rs.next()){
                  v1=Integer.parseInt(rs.getString(14));
                  v2=v1+1;
              }
              v=smt.executeUpdate("update product set ranks='"+v2+"' where pid='"+b1+"'");
        
                so.setAttribute("a1", b1);
              System.out.println(b1);
              RequestDispatcher requestdispatcher = request.getRequestDispatcher("u7.jsp");
           requestdispatcher.forward(request, response);
          }else  if(b2!=null){
                 
        
                so.setAttribute("a1", b2);
              System.out.println(b2);
              RequestDispatcher requestdispatcher = request.getRequestDispatcher("u8.jsp");
           requestdispatcher.forward(request, response);
          }else if(b3!=null){
              System.out.println(b3);
                   ResultSet rs=smt.executeQuery("select * from college where id='"+b3+"' ");
              if(rs.next()){
                  v1=Integer.parseInt(rs.getString(13));
                  v2=v1+1;
              }
              v=smt.executeUpdate("update college set ranks='"+v2+"' where id='"+b3+"'");
            request.setAttribute("ok1", "1");
               request.setAttribute("a1", ""+b3);
              System.out.println(b1);
              RequestDispatcher requestdispatcher = request.getRequestDispatcher("u10.jsp");
           requestdispatcher.forward(request, response);
          }else  if(b4!=null){
              System.out.println(b4);
                   ResultSet rs=smt.executeQuery("select * from sdetail where sid='"+b4+"' ");
              if(rs.next()){
                  v1=Integer.parseInt(rs.getString(10));
                  v2=v1+1;
              }
              v=smt.executeUpdate("update sdetail set ranks='"+v2+"' where sid='"+b4+"'");
            request.setAttribute("ok1", "1");
               request.setAttribute("a1", ""+b4);
              System.out.println(b1);
              RequestDispatcher requestdispatcher = request.getRequestDispatcher("u12.jsp");
           requestdispatcher.forward(request, response);
          }else  if(request.getParameter("s3")!=null){
                        
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("u8.jsp");
				requestDispatcher.forward(request, response);
			}else if(request.getParameter("s4")!=null){
                        
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("u9.jsp");
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
