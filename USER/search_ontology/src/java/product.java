/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
public class product extends HttpServlet {

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
                     HttpSession so = request.getSession(true);
            Statement st = con.createStatement();
            String s1=request.getParameter("s1");
            String s2 = request.getParameter("s2");
            String a1= request.getParameter("a1");
            String a2 = request.getParameter("a2");
            String a3 = request.getParameter("a3");
            String a4 = "C:\\Users\\Loginn\\Desktop\\USER\\"+request.getParameter("a4");
            String a5 = request.getParameter("a5");
            String a6 = request.getParameter("a6");
            String a7 = request.getParameter("a7");
            System.out.println(a5);
         String a8 = request.getParameter("a8");
            String a9 = request.getParameter("a9");
             String a10= request.getParameter("a10");
            String a12 = request.getParameter("a12");
            String a11 = request.getParameter("a11");
             System.out.println("insert into product values('"+a1+"','"+a2+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+so.getAttribute("un") +"'");
            if((s1!=null) )
            {
                  String newDir = "new_dir";
        boolean success = (new File(newDir)).mkdir();

        if (success) {
            System.out.println("Successfully created directory: " + newDir);
        } else {
            System.out.println("Failed to create directory: " + newDir);
        }

        // Create a directory; all non-existent ancestor directories are
        // automatically created.
   newDir = "C:\\Users\\Loginn\\Desktop\\USER\\search_ontology\\web\\product";
        success = (new File(newDir)).mkdirs();

        if (success) {
            System.out.println("Successfully created directory: " + newDir);
        } else {
            System.out.println("Failed to create directory: " + newDir);
        }

                  InputStream inStream = null;
	OutputStream outStream = null;

 
    	    File afile =new File(a4);
            System.out.println(afile);
       
    	       	    File bfile =new File("C:\\Users\\Loginn\\Desktop\\USER\\search_ontology\\web\\product\\"+a1+".jpg");

    	    inStream = new FileInputStream(afile);
    	    outStream = new FileOutputStream(bfile);
 
    	    byte[] buffer = new byte[1024];
 
    	    int length;
    	    //copy the file content in bytes 
    	    while ((length = inStream.read(buffer)) > 0){
 
    	    	outStream.write(buffer, 0, length);
 
    	    }
 
    	    inStream.close();
    	    outStream.close();
 
    	    System.out.println("File is copied successful!");
            if((a1!=null)||(a2!=null)||(a3!=null)||(a4!=null)||(a5!=null)||(a6!=null)||(a7!=null)||(a8!=null)||(a9!=null)  )
            {
             
                      System.out.println("insert into product values('"+a1+"','"+a2+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a7+"'");
           int v=st.executeUpdate("insert into product values('"+a1+"','"+a2+"','"+a1+".jpg','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a3+"','"+so.getAttribute("un") +"','"+a9+"','"+a10+"','"+a11+"','"+a12+"','0')");
            
                if((v==1))  {

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Account Registered Successfully");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("a2.jsp");
                    requestdispatcher.forward(request, response);
                }else{

                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Password didnot match");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("a2.jsp");
                    requestdispatcher.forward(request, response);
                }
                
               
               
              
            }else {
           request.setAttribute("ok", "1");
               request.setAttribute("msg", "Please Enter all the Values");
	       RequestDispatcher requestdispatcher = request.getRequestDispatcher("a2.jsp");
	       requestdispatcher.forward(request, response); 
            }
                                    
            
            }else {
                 request.setAttribute("ok", "1");
			request.setAttribute("msg", "Please Enter all the Values");
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("a2.jsp");
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
