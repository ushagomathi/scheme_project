

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
public class login extends HttpServlet {

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
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();
            Statement st2 = con.createStatement();
            Statement st3 = con.createStatement();

            String vname = request.getParameter("a1");
            String vpass = request.getParameter("a2");
            int b11 = 0, b12 = 0, b13 = 0;
            int h11 = 0, h12 = 0, h13 = 0;
            HttpSession so = request.getSession(true);

            if ((request.getParameter("Submit")) != null) {
                int randomInt = 0;
                Random randomGenerator = new Random();
                for (int idx = 1; idx <= 10; ++idx) {
                    randomInt = randomGenerator.nextInt(100000);

                }
                String rno = null;
                String pw = null;
                String roll = null;
                String roll1 = null;
                int flag = 0;
                int f = 0;
                ResultSet rs = (ResultSet) st.executeQuery("select * from register where username='" + vname + "'");
                String b2 = null;
                String b3 = null;
                while (rs.next()) {
                    b2 = rs.getString(2);
                    b3 = rs.getString(3);
                    System.out.println(b2);
                    System.out.println(b3);
                    if ((vname.equalsIgnoreCase(b2)) && (vpass.equalsIgnoreCase(b3))) {
                        rno = rs.getString(14);
                        System.out.println(rno);
                        pw = rs.getString(15);
                        roll = rs.getString(16);
                        roll1 = rs.getString(17);

                        flag = 1;
                    }
                }

                if ((vname.equals("admin")) && (vpass.equals("admin"))) {

                    flag = 2;
                }
                so.setAttribute("un", vname);
                so.setAttribute("un1", vpass);
                so.setAttribute("gender", rno);
                so.setAttribute("age", pw);
                so.setAttribute("income", roll);
                so.setAttribute("caste", roll1);
                if ((flag == 1)) {

                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("u1.jsp");
                    requestdispatcher.forward(request, response);

                } else if ((flag == 2)) {
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("a1.jsp");
                    requestdispatcher.forward(request, response);
                } else {
                    request.setAttribute("ok", "1");
                    request.setAttribute("msg", "Invalid Username && Password");
                    RequestDispatcher requestdispatcher = request.getRequestDispatcher("i4.jsp");
                    requestdispatcher.forward(request, response);
                }

            }
        } catch (Exception e) {
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
