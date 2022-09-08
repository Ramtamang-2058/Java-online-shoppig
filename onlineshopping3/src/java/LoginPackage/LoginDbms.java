/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package LoginPackage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mausa
 */
@WebServlet(name = "LoginDbms", urlPatterns = {"/LoginDbms"})
public class LoginDbms extends HttpServlet {

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
//        try ( PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet LoginDbms</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet LoginDbms at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        LoginModel model = new LoginModel(email, password);
        System.out.println(email + "  " + password);

        System.out.println("Model value: " + model.getUname() + " " + model.getPassword());

        try {
            Class.forName("com.mysql.jdbc.Driver");
            try ( Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/customer", "root", "")) {
                String sql = "Select * from signup where email = ? and password = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, model.getUname());
                ps.setString(2, model.getPassword());

                ResultSet rs = ps.executeQuery();

                while (rs.next()) {

                    System.out.println("Password is correct");
                    response.sendRedirect("clintpage.jsp");
//    if (rs.getString(1).equals(model.getUname())) {
//        System.out.println("it is true");
//        response.sendRedirect("clintpage.jsp");
//        
//    }

                }
                ps.close();
                rs.close();
                System.out.println("password is incorrent");
                response.sendRedirect("login.jsp");

            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
