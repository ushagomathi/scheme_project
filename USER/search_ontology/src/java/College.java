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
public class College extends HttpServlet {

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
      HttpSession session = request.getSession(true);
		String user = (String) session.getAttribute("un");
		String pass = (String) session.getAttribute("un");
		String a1=request.getParameter("a1");
		String a2=request.getParameter("a2");
		String a3=request.getParameter("a3");
		String a4=request.getParameter("a4");
                String a5=request.getParameter("a5");
		String a6=request.getParameter("a6");
		String a7=request.getParameter("a7");
		String a8=request.getParameter("a8");
                String a11=request.getParameter("a11");
		String a12=request.getParameter("a12");
		String a13=request.getParameter("a13");
		String a14=request.getParameter("a14");
                String a15=request.getParameter("a15");
		String a16=request.getParameter("a16");
                String a17=request.getParameter("a17");
                       String a18=request.getParameter("a18");String a19=request.getParameter("a19");
		String a10=request.getParameter("a10");
		String a9=request.getParameter("a9");
		ArrayList b1=new ArrayList();
		try {
			int flag = 0;
int v1=0,v2=0,v3=0;
			String url = "jdbc:mysql://localhost:3306/purchases1";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st1=(Statement) con.createStatement();
                        if(request.getParameter("s1")!=null){
                            ResultSet rs1=st1.executeQuery("select type from type where cname='"+a2+"' " );
			while(rs1.next())
			{
				b1.add(rs1.getString(1));
								
			}
                        request.setAttribute("al", b1);
			request.setAttribute("ok", "1");
			request.setAttribute("a", a1);
			request.setAttribute("b", a2);
                        RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("a4.jsp");
				requestDispatcher.forward(request, response);
                        }else if(request.getParameter("s2")!=null){
                            Statement st =(Statement) con.createStatement();
   ResultSet rs1=st1.executeQuery("select max(id) from college " );
			if(rs1.next())
			{
			v1=Integer.parseInt(rs1.getString(1));
			v2=v1+1;					
			}
			int k = st.executeUpdate("insert into college values('"
					+ v2 + "','"+ a1 + "','" + a2 + "','" + a3 + "','" + a18
					+ "','" + a4
					+ "','" + a5+ "','" + a6+ "','" + a7 + "','" + a8
					+ "','" + a9 + "','" + a19+ "','0')");
                        		v2=v2+1;
                        int k1 = st.executeUpdate("insert into college values('"
					+ v2 + "','"
					+ a1 + "','" + a2 + "','" + a3 + "','" + a18
					+ "','" + a4
					+ "','" + a5+ "','" + a6+ "','" + a7 + "','" + a10
					+ "','" + a11 + "','" + a19+ "','0')");
                        v2=v2+1;
                                int k2 = st.executeUpdate("insert into college values('"
					+ v2 + "','"
					+ a1 + "','" + a2 + "','" + a3 + "','" + a18
					+ "','" + a4
					+ "','" + a5+ "','" + a6+ "','" + a7 + "','" + a12
					+ "','" + a13 + "','" + a19+ "','0')");
                                v2=v2+1;
                             	int k3 = st.executeUpdate("insert into college values('"
					+ v2 + "','"
					+ a1 + "','" + a2 + "','" + a3 + "','" + a18
					+ "','" + a4
					+ "','" + a5+ "','" + a6+ "','" + a7 + "','" + a14
					+ "','" + a15 + "','" + a19+ "','0')");
                                v2=v2+1;
                                	int k4 = st.executeUpdate("insert into college values('"
					+ v2 + "','"
					+ a1 + "','" + a2 + "','" + a3 + "','" + a18
					+ "','" + a4
					+ "','" + a5+ "','" + a6+ "','" + a7 + "','" + a16
					+ "','" + a17 + "','" + a19+ "','0')");
			if ((k > 0)) {

				request.setAttribute("ok", "1");
				request.setAttribute("msg",
						"Given Datas are Inserted Successfully");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("a4.jsp");
				requestDispatcher.forward(request, response);
			} else {
			
				request.setAttribute("ok", "1");
				System.out.println(a1);
				request.setAttribute("msg", "Given Datas Are Not Inserted");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("a4.jsp");
				requestDispatcher.forward(request, response);
			}
                        }
			
			
			
			
			
		} catch (Exception e) {
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
