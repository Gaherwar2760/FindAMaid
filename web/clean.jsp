<%-- 
    Document   : clean
    Created on : 07-Mar-2024, 9:27:37 pm
    Author     : POONAM
--%>

<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Blob image=null;
        byte[] imagedata=null;
        ResultSet rs=null;
        String id=request.getParameter("id");
        String cat=request.getParameter("cat");
        
        Statement stmt=null;
        try{
        Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FindAMaid?useSSL=false","root","root");
        stmt=con.createStatement();
        rs=stmt.executeQuery("select image from cleaning where mid='"+id+"'");
        if(rs.next()){
        image=rs.getBlob(1);
        imagedata=image.getBytes(1, (int)image.length());
            }
            else{
            out.print("display blob example");
            return ;
            }
       
       response.setContentType("image/gif");
       OutputStream o=response.getOutputStream();
       o.write(imagedata);
       o.flush();
       o.close();
            }
            catch(Exception e){
            
            }
               
%>
    </body>
</html>
