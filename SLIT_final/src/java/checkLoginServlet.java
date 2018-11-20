/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author herma
 */
@WebServlet(urlPatterns = {"/checkLoginServlet"})
public class checkLoginServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet checkLoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("</body>");
            out.println("</html>");
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


    @Override
    
    //Metode for login.
    //henter parameter for brukernavn og passord.
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                String un=request.getParameter("username");
		String pw=request.getParameter("password");
		
		// Connect to mysql and verify username password
                
               	try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		Connection c = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/SLIT", "root", "root"); // gets a new connection
 
		PreparedStatement ps = c.prepareStatement("select user_name,pass from user_ where user_name=? and pass=?");
                
		ps.setString(1, un);
		ps.setString(2, pw);
                
                
 
		ResultSet rs = ps.executeQuery();
                
                //if condition for å logge inn som teacher eller student. blir redirected til side.
                if(un.equals("Hallgeir")){
		while (rs.next()) {
                    
                        HttpSession session = request.getSession();
                        session.setAttribute("username1", un);

                       response.sendRedirect(request.getContextPath() + "/Teacher/mainPageTeacher.jsp");
                    
                       c.close(); //close connection.
                }

                
                }
                else if(un.equals("Robert")){
                    while (rs.next()){
                        
                         HttpSession session = request.getSession();
                         session.setAttribute("username2", un);
                        
                       response.sendRedirect(request.getContextPath() + "/Student/mainPageStudent.jsp");
                       
                       c.close(); //close connection;
                    }
                    
                       
                }
                
                else{
                    JOptionPane.showMessageDialog(null,"Brukernavn eller passord er feil"); 
                    response.sendRedirect("login.jsp"); //prøver login på ny.
                    
                }
		
                
                
                
                c.close(); //stenger connection.
                
		} catch (IOException | ClassNotFoundException | SQLException e) {
                    
                    System.out.print("søp");
		} 
              
        
	}

}
