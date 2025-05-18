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
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author ADMIN
 */
public class register extends HttpServlet {

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
           String as="";
              Connection con=null;
      	      String url="jdbc:mysql://localhost:3306/purchases1";// Change the local host as the ip address of the server
	      String driver="com.mysql.jdbc.Driver";
	      Class.forName(driver);
	       con=(Connection)DriverManager.getConnection(url, "root","root");
                 Statement smt=con.createStatement();     Statement smt1=con.createStatement();     Statement smt2=con.createStatement();     Statement smt3=con.createStatement();
            String a1=request.getParameter("a1");
             String a2=request.getParameter("a2");
                         String a3=request.getParameter("a3");
                           String a4=request.getParameter("a4");
             String a5=request.getParameter("a5");
                         String a6=request.getParameter("a6");
                           String a7=request.getParameter("a7");
             String a8=request.getParameter("a8");
                         String a9=request.getParameter("a9");
                           String a10=request.getParameter("a10");
                            String a11=request.getParameter("a11");
                        String a12=request.getParameter("a12");
                            String a13=request.getParameter("a13");
                            String a14=request.getParameter("a14");
                                    String a15=request.getParameter("a15");
                             int randomInt=0;
              Random randomGenerator = new Random();
    for (int idx = 1; idx <= 10; ++idx){
    randomInt = randomGenerator.nextInt(1000);
    
    }
        
		
     int t1=0,t2=0,t3=0;
   
             if(request.getParameter("Submit")!=null){
                              if((a1.equals(""))||(a2.equals(""))||(a3.equals(""))||(a4.equals(""))||(a5.equals(""))&&(a6.equals(""))||(a7.equals(""))||(a8.equals(""))||(a9.equals(""))||(a10.equals(""))||(a11.equals("")))
              {
                   request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please press enter");
                      RequestDispatcher rs=request.getRequestDispatcher("i3.jsp");
                     rs.forward(request, response); 
              }else{
                 ResultSet rs11=smt1.executeQuery("select * from register where username='"+a1+"'");
                 if(rs11.next()){
                                     request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Already Username Exist");
                   RequestDispatcher rs=request.getRequestDispatcher("i3.jsp");
                    rs.forward(request, response);
                 }else{
            

  
     
               	if(a2.equalsIgnoreCase(a3)){
                       ResultSet rs1=smt1.executeQuery("select max(userid) from register ");
               if(rs1!=null){  if(rs1.next()){
                             t1=Integer.parseInt(rs1.getString(1));
                             t2=t1+1;
                 }}else{
                     t2=1000;
               }
                 
	      int v=   smt.executeUpdate("insert into register values('"+t2+"','"+a1+"','"+a2+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a9+"','"+a10+"','"+as+"','"+a11+"','"+as+"','"+a12+"','"+a13+"','"+a14+"','"+a15+"')");
                if(v==1){
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Stored Successfully");
                   RequestDispatcher rs=request.getRequestDispatcher("i3.jsp");
                    rs.forward(request, response);
                }else{
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                   RequestDispatcher rs=request.getRequestDispatcher("i3.jsp");
                    rs.forward(request, response);
                }} else{
                          
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the Password");
                   RequestDispatcher rs=request.getRequestDispatcher("i3.jsp");
                    rs.forward(request, response);
                }
                 }
                              }
              
             } else if(request.getParameter("Check")!=null){
                if((a1.equals("")))
              {
                   request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please press enter");
                      RequestDispatcher rs=request.getRequestDispatcher("i3.jsp");
                     rs.forward(request, response); 
              }else{
                    ResultSet rs11=smt1.executeQuery("select * from register where username='"+a1+"'");
                 if(rs11.next()){
                                     request.setAttribute("ok1", "1");
                                      request.setAttribute("a", a1);
                    request.setAttribute("msg", "Username "+a1+" is Already in use ");
                   RequestDispatcher rs=request.getRequestDispatcher("i3.jsp");
                    rs.forward(request, response);
                 }else{
                        request.setAttribute("ok1", "1");     request.setAttribute("a", a1);
                    request.setAttribute("msg", "Username "+a1+" is not in use ");
                   RequestDispatcher rs=request.getRequestDispatcher("i3.jsp");
                    rs.forward(request, response);
                 }
            
             }
             }
                else{
                          
                       request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Please enter the value");
                   RequestDispatcher rs=request.getRequestDispatcher("i3.jsp");
                    rs.forward(request, response);
                }
                           
        }catch(Exception e){
            e.printStackTrace();
        }finally {            
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
