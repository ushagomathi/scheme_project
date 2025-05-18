

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


public class College1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
                String a9=request.getParameter("a9");
                String a18=request.getParameter("a18");
                String a19=request.getParameter("a19");
		
		
		ArrayList b1=new ArrayList();
		try {
			int flag = 0;
int v1=0,v2=0,v3=0;
			String url = "jdbc:mysql://localhost:3306/purchases1";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "root");
			Statement st1=(Statement) con.createStatement();
                        if(request.getParameter("s3")!=null){
                           	int k = st1.executeUpdate("delete from college  where id='" + a1+ "'");
                        		
                       
			if ((k > 0)) {

				request.setAttribute("ok", "1");
				request.setAttribute("msg",
						"Data deleted successfully");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("a41.jsp");
				requestDispatcher.forward(request, response);
			} else {
			
				request.setAttribute("ok", "1");
				System.out.println(a1);
				request.setAttribute("msg", "Given data are not inserted");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("a41.jsp");
				requestDispatcher.forward(request, response);
			}
                        }else if(request.getParameter("s2")!=null){
                            Statement st =(Statement) con.createStatement();

			int k = st.executeUpdate("update college set  cname='" + a2 + "', type='" + a3 + "', colname='" + a18
					+ "', location='" + a4 	+ "', address='" + a5+ "' , aboutus='" + a6+ "', history='" + a7 + "' , department='" + a8
					+ "', noseat='" + a9 + "', caste='" + a19+ "' where id='"+ a1 + "'");

                       
			if ((k > 0)) {

				request.setAttribute("ok", "1");
				request.setAttribute("msg",
						"Given data updated successfully");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("a41.jsp");
				requestDispatcher.forward(request, response);
			} else {
			
				request.setAttribute("ok", "1");
				System.out.println(a1);
				request.setAttribute("msg", "Given data are not inserted");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("a41.jsp");
				requestDispatcher.forward(request, response);
			}
                        }else {
			
				request.setAttribute("ok", "1");
				
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("a41.jsp");
				requestDispatcher.forward(request, response);
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
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
