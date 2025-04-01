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

/**
 *
 * @author perumal s
 */
public class apply extends HttpServlet {

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
                    String url = "jdbc:mysql://localhost:3306/purchases1";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
            PreparedStatement ps;
            Statement st = con.createStatement();      Statement st1 = con.createStatement();
                  Statement st2 = con.createStatement();Statement st3 = con.createStatement();
                  Statement st4 = con.createStatement();
            String s1=request.getParameter("s1");
            String s2 = request.getParameter("s2");
            String a1= request.getParameter("a1");
            String a2 = request.getParameter("a2");
            String a3 = request.getParameter("a3");
            String a4 = request.getParameter("a4");
            String a5 = request.getParameter("a5");
            String a6 = request.getParameter("a6");
            String a7 = request.getParameter("a7");
              String a8 = request.getParameter("a8");
            String a9 = request.getParameter("a9");
               String a10 = request.getParameter("a10");
            
           String a21= request.getParameter("a21");
            String a12 = request.getParameter("a12");
            String a13 = request.getParameter("a13");
            String a14 = request.getParameter("a14");
            String a15 = request.getParameter("a15");
            String a16 = request.getParameter("a16");
            String a17 = request.getParameter("a17");
              String a18 = request.getParameter("a18");
            String a19 = request.getParameter("a19");
               String a20 = request.getParameter("a20");
              String a22 = request.getParameter("a22");
            if((s1!=null) )
            {
            if((a1!=null)|| (a2!=null)|| (a3!=null) || (a4!=null) || (a5!=null)|| (a6!=null)|| (a7!=null)|| (a8!=null)|| (a9!=null) || (a10!=null)||(a21!=null)|| (a12!=null)|| (a13!=null) || (a14!=null) || (a15!=null)|| (a16!=null)|| (a17!=null)|| (a18!=null)|| (a19!=null) || (a20!=null) || (a22!=null) )
            {  int tid=0,tid1=0,tid2=0,tid3=0,tid4=0;
                          String[] a11=new String[2];
                String a113="";
                         int a111=0,a112=0;
                         System.out.println("select * from college where id='"+a1+"' and department='"+a3+"' and caste='"+a4+"'");
                    ResultSet rs = st1.executeQuery("select * from college where id='"+a1+"' and department='"+a3+"' and caste='"+a4+"'");
				if (rs.next()) {
                                  
				tid2=Integer.parseInt(rs.getString(11));
                                tid3=tid2-1;

				} 
                                
                                
                               ResultSet rs2 = st2.executeQuery("select max(cid) from apply ");
				if (rs2.next()) {
                                    a12=rs2.getString(1);
                                    a11=a12.split("CID");
                                    System.out.println(a11[1]);
					tid =Integer.parseInt( a11[1]);
					tid1=tid+1;
				

				}else{
                                    tid1=1000;
                                } a113="CID"+tid1;
                                
               
                                int v1=st3.executeUpdate("update college set noseat='"+tid3+"' where id='"+a1+"'and department='"+a3+"' and  caste='"+a4+"'");
                      System.out.println("insert into apply values('"+a113+"','"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a9+"','"+a10+"','"+a12+"','"+a13+"','"+a14+"','"+a15+"','"+a16+"','"+a17+"','"+a18+"','"+a19+"','"+a20+"','"+a21+"','"+a22+"')");
           int v=st.executeUpdate("insert into apply values('"+a113+"','"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a9+"','"+a10+"','"+a12+"','"+a13+"','"+a14+"','"+a15+"','"+a16+"','"+a17+"','"+a18+"','"+a19+"','"+a20+"','"+a21+"','"+a22+"')");
            
                if((v==1))  {

                    request.setAttribute("ok1", "1");
                    request.setAttribute("msg", "Account Registered Successfully");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u10.jsp");
                    requestdispatcher.forward(request, response);
                }else{

                    request.setAttribute("ok1", "1");
                    request.setAttribute("msg", "Password didnot match");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u10.jsp");
                    requestdispatcher.forward(request, response);
                }
                
               
               
              
            }else {
           request.setAttribute("ok", "1");
               request.setAttribute("msg", "Please Enter all the Values");
	       RequestDispatcher requestdispatcher = request.getRequestDispatcher("u10.jsp");
	       requestdispatcher.forward(request, response); 
            }
                                    
            
            }else {
                 request.setAttribute("ok", "1");
			request.setAttribute("msg", "Please Enter all the Values");
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("u10.jsp");
			requestdispatcher.forward(request, response);
            }
            
            
            
            
            
            
        }catch(Exception e) {
        e.printStackTrace();
        } finally {            
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
