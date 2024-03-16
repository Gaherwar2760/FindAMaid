/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servletFiles;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author POONAM
 */
public class LoginServletU extends HttpServlet {
int flag=0;
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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServletU</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServletU at " + request.getContextPath() + "</h1>");
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
            //PrintWriter pw=response.getWriter();
        response.setContentType("text/html");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        RequestDispatcher rd=null;
        try{
           
                Class.forName("com.mysql.cj.jdbc.Driver");
             Connection   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FindAMaid?useSSL=false","root","root");
                     PreparedStatement ps=con.prepareStatement("Select email,pass,uname from signupU");
                          ResultSet rs = ps.executeQuery();       
                                
                          while(rs.next())
                          {   
                        String email1= rs.getString(1).trim();
                        String pass = rs.getString(2).trim();
                        String uname=rs.getString(3).trim();
                          System.out.println(email1+" "+pass);
                           if((email.compareToIgnoreCase(email1)==0)&& (password.compareToIgnoreCase(pass)==0))
                           {
                          
                            flag=1;
                            request.setAttribute("user",uname);
                            break;
                            //request.setAttribute("status","success");
                          //  request.setAttribute("uname",)
                            //System.out.println("maidapplypage");
                           // request.getRequestDispatcher("MaidApply.jsp").forward(request, response);
                           
                            }
                          }
                           if(flag==1){
                               request.getRequestDispatcher("MaidApply.jsp").forward(request, response);
                           }
                           else{
                             // pw.println("<script type=\"text/javascript\">");
                              // pw.println("alert('user not found if not signed up Plz sign up!');");
                               // pw.println("function popupWindow() {window.open( 'someLinkToBePoppedUp' );}");
                              // pw.println("top.window.location = '<%=request.getContextPath()%>/index.html';");
                               //pw.println("</script>");
                              //
                              
                              //request.setAttribute("errorMessage", "Invalid user or password");
                                 /* pw.println("<script type=\"text/javascript\">");
                                   pw.println("location='index.jsp';");
                                  pw.println("alert('User or password incorrect');");
                                 
                                  pw.println("</script>");*/
            
                                 request.setAttribute("status","failed");
                                
                                 request.getRequestDispatcher("MaidDisplay.jsp").forward(request, response);
                           }
                    
                      }
                        
                       

        
        catch(Exception e){
            System.out.println(e);
        }  
        
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
