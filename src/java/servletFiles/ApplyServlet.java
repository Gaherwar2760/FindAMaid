/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servletFiles;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.String.format;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import static java.text.MessageFormat.format;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;

/**
 *
 * @author POONAM
 */
@MultipartConfig(maxFileSize=16177216)
public class ApplyServlet extends HttpServlet {
     Connection con;
       PreparedStatement stmt;
       int flag;
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
            out.println("<title>Servlet ApplyServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ApplyServlet at " + request.getContextPath() + "</h1>");
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
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String Fname=request.getParameter("fname");
        String Mname=request.getParameter("mname");
        String Lname=request.getParameter("lname");
        
        String dob=request.getParameter("dob");
          
         String address=request.getParameter("address");
        String city=request.getParameter("city");
         String area=request.getParameter("area");
       String mobile=request.getParameter("mob");
        int age=Integer.parseInt(request.getParameter("age"));
         String mstatus=request.getParameter("mstatus");
         int experience=Integer.parseInt(request.getParameter("exp"));
          String salary=request.getParameter("salary");
           String Category=request.getParameter("inlineRadioOptions");
                Part part=request.getPart("image");
                Part vc=request.getPart("vcerti");
                Part aadhar=request.getPart("Aadhar");
        try{
           
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FindAMaid","root","root");
                 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
                 java.util.Date udob=sdf.parse(dob);
                 long time=udob.getTime();
                 java.sql.Date sqdob=new java.sql.Date(time);
               InputStream is=part.getInputStream();
                InputStream vcis=vc.getInputStream();
                InputStream aadhar1=aadhar.getInputStream();
                
                 if(Category.equals("baby")){
                     out.println("Hii"+Category);
                      stmt=con.prepareStatement("insert  into babys (fname,mname,lname,dob,address,city,area,exp,mstatus,age,mobile,salary,image,vericerti,aadhar) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
                    out.println("Hii"+Category);
                      stmt.setString(1,Fname);//1 specifies the first parameter in the query  
                                stmt.setString(2,Mname);  
                                stmt.setString(3,Lname);
                                stmt.setDate(4,sqdob);
                                
                              
                                  stmt.setString(5,address);//1 specifies the first parameter in the query  
                               stmt.setString(6,city);  
                                stmt.setString(7,area);
                                 stmt.setInt(8,experience);//1 specifies the first parameter in the query  
                               stmt.setString(9,mstatus); 
                                stmt.setInt(10,age);  
                                stmt.setString(11,mobile);
                                stmt.setString(12,salary);
                                stmt.setBlob(13,is);
                                stmt.setBlob(14,vcis);
                                 stmt.setBlob(15,aadhar1);
                                  int x=stmt.executeUpdate();
                                  if(x==1){
                                      flag=1;
                                      request.setAttribute("applied","success");
                                    
                                  }
                                  else{
                                     
                                     request.setAttribute("applied","failed");
                          
                                  }
                 }
                 else 
                      if(Category.equals("cook")){
                       out.println("Hii"+Category);
                      stmt=con.prepareStatement("insert  into cooking (fname,mname,lname,dob,address,city,area,exp,mstatus,age,mobile,salary,image,vericerti,aadhar) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
                       out.println("Hii"+Category);
                       stmt.setString(1,Fname);//1 specifies the first parameter in the query  
                                stmt.setString(2,Mname);  
                                stmt.setString(3,Lname);
                                stmt.setDate(4,sqdob);
                                
                              
                                  stmt.setString(5,address);//1 specifies the first parameter in the query  
                               stmt.setString(6,city);  
                                stmt.setString(7,area);
                                 stmt.setInt(8,experience);//1 specifies the first parameter in the query  
                               stmt.setString(9,mstatus); 
                                stmt.setInt(10,age);  
                                stmt.setString(11,mobile);
                                stmt.setString(12,salary);
                                stmt.setBlob(13,is);
                                stmt.setBlob(14,vcis);
                                 stmt.setBlob(15,aadhar1);
                                  int x=stmt.executeUpdate();
                                  if(x==1){
                                      flag=1;
                                      request.setAttribute("applied","success");
                                  }
                                  else{
                                        request.setAttribute("applied","failed");
                                  }
                  }
                  else if(Category.equals("clean")){
                        out.println("Hii"+Category);
                      stmt=con.prepareStatement("insert  into cleaning (fname,mname,lname,dob,address,city,area,exp,mstatus,age,mobile,salary,image,vericerti,aadhar) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
                       out.println("Hii"+Category);
                         stmt.setString(1,Fname);//1 specifies the first parameter in the query  
                                stmt.setString(2,Mname);  
                                stmt.setString(3,Lname);
                                stmt.setDate(4,sqdob);
                                
                              
                                  stmt.setString(5,address);//1 specifies the first parameter in the query  
                               stmt.setString(6,city);  
                                stmt.setString(7,area);
                                 stmt.setInt(8,experience);//1 specifies the first parameter in the query  
                               stmt.setString(9,mstatus); 
                                stmt.setInt(10,age);  
                                stmt.setString(11,mobile);
                                stmt.setString(12,salary);
                                 stmt.setBlob(13,is);
                                stmt.setBlob(14,vcis);
                                 stmt.setBlob(15,aadhar1);
                                int x=stmt.executeUpdate();
                                     if(x==1){
                                      flag=1;
                                      request.setAttribute("applied","success");
                                  }
                                  else{
                                       request.setAttribute("applied","failed");
                                  }
                 }
                   else if(Category.equals("elder")){
                         out.println("Hii"+Category);
                      stmt=con.prepareStatement("insert  into elderly (fname,mname,lname,dob,address,city,area,exp,mstatus,age,mobile,salary,image,vericerti,aadhar) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
                       out.println("Hii"+Category);
                         stmt.setString(1,Fname);//1 specifies the first parameter in the query  
                                stmt.setString(2,Mname);  
                                stmt.setString(3,Lname);
                                stmt.setDate(4,sqdob);
                                
                              
                                  stmt.setString(5,address);//1 specifies the first parameter in the query  
                               stmt.setString(6,city);  
                                stmt.setString(7,area);
                                 stmt.setInt(8,experience);//1 specifies the first parameter in the query  
                               stmt.setString(9,mstatus); 
                                stmt.setInt(10,age);  
                                stmt.setString(11,mobile);
                                stmt.setString(12,salary);
                                 stmt.setBlob(13,is);
                                stmt.setBlob(14,vcis);
                                 stmt.setBlob(15,aadhar1);
                                 int x=stmt.executeUpdate();
                                     if(x==1){
                                       flag=1;
                                      request.setAttribute("applied","success");
                                  }
                                  else{
                                       request.setAttribute("applied","failed");
                                  }
                    }
                 else if(Category.equals("all")){
                       out.println("Hii"+Category);
                      stmt=con.prepareStatement("insert  into entire (fname,mname,lname,dob,address,city,area,exp,mstatus,age,mobile,salary,image,vericerti,aadhar) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
                       out.println("Hii"+Category);
                         stmt.setString(1,Fname);//1 specifies the first parameter in the query  
                                stmt.setString(2,Mname);  
                                stmt.setString(3,Lname);
                                stmt.setDate(4,sqdob);
                                
                              
                                  stmt.setString(5,address);//1 specifies the first parameter in the query  
                               stmt.setString(6,city);  
                                stmt.setString(7,area);
                                 stmt.setInt(8,experience);//1 specifies the first parameter in the query  
                               stmt.setString(9,mstatus); 
                                stmt.setInt(10,age);  
                                stmt.setString(11,mobile);
                                stmt.setString(12,salary);
                                 stmt.setBlob(13,is);
                                stmt.setBlob(14,vcis);
                                 stmt.setBlob(15,aadhar1);
                                   int x=stmt.executeUpdate();
                                     if(x==1){
                                     flag=1;
                                      request.setAttribute("applied","success");
                                  }
                                  else{
                                       request.setAttribute("applied","failed");
                                  }
                  }
                  else{
                      
                  }
                  if(flag==1){
                               request.getRequestDispatcher("index.jsp").forward(request, response);
                           }
                           else{ request.setAttribute("applied","failed");
                                
                                 request.getRequestDispatcher("MaidApply.jsp").forward(request, response);
                           }
                       
                 }      
        catch(Exception e){
            
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
