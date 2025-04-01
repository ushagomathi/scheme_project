/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
public class feedback extends HttpServlet {

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
          HttpSession so = request.getSession(true);
       
                    String url = "jdbc:mysql://localhost:3306/purchases1";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
            PreparedStatement ps;
            int pid=1000,pid1=0;
              Statement st1 = con.createStatement();
                Statement st2 = con.createStatement();
            Statement st = con.createStatement();
            String s1=request.getParameter("s1");
            String s2 = request.getParameter("s2");
            String a1= request.getParameter("a1");
            String a2 = request.getParameter("a2");
            String a3 = request.getParameter("a3");
            String a4 = request.getParameter("a4");
            String a5 = request.getParameter("a5");
                 String a6 = request.getParameter("a6");
            if(s1!=null){
                  ResultSet rs1 = (ResultSet) st1.executeQuery("select * from register where username='" +so.getAttribute("un")+ "'");
                     String b1 ="";
                    if (rs1.next()) {
                      b1=rs1.getString(17);
                   }
                      System.out.println("insert into product values('"+a1+"','"+a2+"','"+a4+"','"+a5+"','"+so.getAttribute("un")+"','"+b1+"')");
           int v=st.executeUpdate("insert into feedback values('"+a1+"','"+a2+"','"+a4+"','"+a5+"','"+so.getAttribute("un")+"','"+b1+"','"+a6+"')");
            
                if((v==1))  {

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Feedback Added Successfully");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u8.jsp");
                    requestdispatcher.forward(request, response);
                }else{

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Feedback Failed");
                     RequestDispatcher requestdispatcher = request.getRequestDispatcher("u8.jsp");
                    requestdispatcher.forward(request, response);
                }
            }else  if(s2!=null){
                RequestDispatcher requestdispatcher = request.getRequestDispatcher("u8.jsp");
                    requestdispatcher.forward(request, response);
            } else 
            {
                
            }
        }catch(Exception e) {
            e.printStackTrace();
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
