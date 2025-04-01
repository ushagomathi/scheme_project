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
import java.text.SimpleDateFormat;
import java.util.Random;
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
public class purchase2 extends HttpServlet {

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
        try {  HttpSession so = request.getSession(true);
       
                    String url = "jdbc:mysql://localhost:3306/purchases1";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
            PreparedStatement ps;
            int pid=1000,pid1=0;        String as="",as1="";
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
                String a7 = request.getParameter("a7");
                  String a11 = request.getParameter("a8");
                   String a9 = request.getParameter("a9");
                String a10 = request.getParameter("a10");
            String h1="",h2="",h3="",h4="",h5="";
           int t1=0,t2=0,t3=0,t4=0,t5=0;
             int t11=0,t12=0,t13=0,t14=0,t15=0;
             String a8="";
             java.util.Date st11 = new java.util.Date();
                // Formatting date into  yyyy-MM-dd HH:mm:ss e.g 2008-10-10 11:21:10

                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                String f = formatter.format(st11);
                System.out.println("Formatted date is ==>" + f);
              int randomInt = 0;
                Random randomGenerator = new Random();
                for (int idx = 1; idx <= 10; ++idx) {
                    randomInt = randomGenerator.nextInt(100000);

                }
            if((s1!=null) )
            {
            if((a1!=null)|| (a2!=null)|| (a3!=null) || (a4!=null) || (a5!=null)|| (a6!=null) )
            {  
                   t1=Integer.parseInt(a5);
                         t2=Integer.parseInt(a7);
                        t3=(t1*t2);
                    a8 =t3+"";
                          int f1=0,f2=0;
                            int b11=0,b12=0,b13=0;
        int h11=0,h12=0,h13=0;
                ResultSet rs12 = (ResultSet) st.executeQuery("select * from register where username='" + so.getAttribute("un")+ "'");
       if(rs12.next()){
           f1=1;
     }
      
       if ((f1 == 1)) {
                      
                    
                       
                
          
                 
                   
                   
                      
           System.out.println(t13);
                  
                     
                              
               
                           
                             request.setAttribute("ok", "1");
                                 request.setAttribute("a1", a1);
                            request.setAttribute("a2", a2);
                             request.setAttribute("a3", a3);
                            request.setAttribute("a4", a4);
                               request.setAttribute("a5", a5);   
                        request.setAttribute("a6", a6);
                            request.setAttribute("a7", a7);
                             request.setAttribute("a8", a8);
                    
          
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u7.jsp");
                    requestdispatcher.forward(request, response);

                      
                    
                 
                }
                      
      
              
            }else {
           request.setAttribute("ok", "1");
               request.setAttribute("msg", "Please Enter all the Values");
	       RequestDispatcher requestdispatcher = request.getRequestDispatcher("u7.jsp");
	       requestdispatcher.forward(request, response); 
            }
                                    
            
            }else if(request.getParameter("s3")!=null){
        
                System.out.println(a9);
                int h=0;
              
              ResultSet rs12 = (ResultSet) st.executeQuery("select * from register where username='" + so.getAttribute("un")+ "'");
       if(rs12.next()){
             ResultSet rs3 = (ResultSet) st1.executeQuery("select max(pid) from purchase");
       if(rs3.next()){
           pid1=Integer.parseInt(rs3.getString(1));
           pid=pid1+1;
       }
            ResultSet rs6 = (ResultSet) st1.executeQuery("select * from product where pid='"+a1+"'");
       if(rs6.next()){
           t11=Integer.parseInt(rs6.getString(7));
       System.out.println(t11);
       as=rs6.getString(8);
        as1=rs6.getString(5);
       }     
       t12=Integer.parseInt(a7);
           System.out.println(t12);
       t13=t11-t12;
       

                
System.out.println(a1+a2+a3+a4+a5+a6+t2+t3);
                      
System.out.println("insert into purchase values('"+pid+"','"+rs12.getString(3) +"','"+rs12.getString(8) +"','"+rs12.getString(7) +"','"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+t3+"','"+f+"')");
          int v=st2.executeUpdate("insert into  purchase values('"+pid+"','"+rs12.getString(3) +"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a7+"','"+a11+"','"+f+"','"+as+"','"+as1+"','"+a1+"')");
                
System.out.println("update product set stock='"+t13+"' where pid='"+a1+"' ");
          int v1=st2.executeUpdate("update product set stock='"+t13+"' where pid='"+a1+"' ");
                
if((v==1)&&(v1==1))  {

                    
request.setAttribute("ok", "1");
                        
request.setAttribute("a1", a6);
                            
request.setAttribute("a7", a7);
                    
request.setAttribute("msg", "Account Registered Successfully");
                    
RequestDispatcher requestdispatcher = request.getRequestDispatcher("u7.jsp");
                    
requestdispatcher.forward(request, response);
                }else{

                    
request.setAttribute("ok", "1");
                    
request.setAttribute("msg", "Password didnot match");
                    
RequestDispatcher requestdispatcher =request.getRequestDispatcher("u7.jsp");
                    
requestdispatcher.forward(request, response);
                }
             
      
      
            }
       
               } 
else {
                 request.setAttribute("ok", "1");
			request.setAttribute("msg", "Please Enter all the Values");
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("u7.jsp");
			requestdispatcher.forward(request, response);
            }
            
            
            
            
            
            
        }catch(Exception e) {
        e.printStackTrace();
        }  finally {            
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
