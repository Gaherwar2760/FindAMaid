<%-- 
    Document   : MaidDisplay
    Created on : 06-Mar-2024, 6:54:41 pm
    Author     : POONAM
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="style.css" type="text/css"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">

<style>
    .card-img-top {
width: 100%;
height: 40vh;
object-fit: cover;
}

</style>
    </head>
    <body>
          
        <jsp:include page="header.jsp" />
        
       <%
          PreparedStatement ps=null; 
        String area1=request.getParameter("area").trim();
        String salary=request.getParameter("salary");
       String experience=request.getParameter("exp");
       
        String category=request.getParameter("id");
       
   
               try{
                Class.forName("com.mysql.cj.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FindAMaid?useSSL=false","root","root");
           if(category.equals("clean")) {  
        ps=con.prepareStatement("Select fname,lname,area,mid,image from cleaning where area=? and salary=?");
            ps.setString(1, area1);
            ps.setString(2, salary);
              ResultSet rs=ps.executeQuery();
            while(rs.next()){
             String name=rs.getString(1).trim();
            String lastName=rs.getString(2).trim();
            String ar=rs.getString(3).trim();
             int id=rs.getInt(4);
            
                %>
             <div class='col-sm-3'>
               <div class='card' style='width: 20rem;'>
              
             
                   <img class='card-img-top' src='clean.jsp?id=<%= id%>' width=100% alt='Card image cap'></img>
        
  
           <div class='card-body'>
               <h5 class='card-title'>FirstName:
             <%= name %>
            </h5>
               <p class='card-text'>LastName:
              <%= lastName%>
               </p>
                <p class='card-text'>Area:
             <%= ar%>
               </p>
             <a href='#' class='btn1 btn-primary' data-toggle="model" data-target="#login"  type="submit" style:"color:#f4511e" >View Full Profile</a>
               </div>
               </div>
               </div>
           <%
              }
           }
           else if(category.equals("baby")){
                 ps=con.prepareStatement("Select fname,lname,area,mid,image from babys where area=? and salary=?");
            ps.setString(1, area1);
            ps.setString(2, salary);
              ResultSet rs=ps.executeQuery();
            while(rs.next()){
             String name=rs.getString(1).trim();
            String lastName=rs.getString(2).trim();
            String ar=rs.getString(3).trim();
             int id=rs.getInt(4);
            
                %>
             <div class='col-sm-3'>
               <div class='card' style='width: 20rem;'>
              
             
                   <img class='card-img-top' src='baby.jsp?id=<%= id%>' width=100% alt='Card image cap'></img>
        
  
           <div class='card-body'>
               <h5 class='card-title'>FirstName:
             <%= name %>
            </h5>
               <p class='card-text'>LastName:
              <%= lastName%>
               </p>
                <p class='card-text'>Area:
             <%= ar%>
               </p>
             <a href='#' class='btn1 btn-primary'data-toggle="model" data-target="#login"  type="submit" style:"background-color:#f4511e" >View Full profile</a>
               </div>
               </div>
               </div>
           <%
              }
           }
           else if(category.equals("elder")){
             ps=con.prepareStatement("Select fname,lname,area,mid,image from elderly where area=? and salary=?");
            ps.setString(1, area1);
            ps.setString(2, salary);
              ResultSet rs=ps.executeQuery();
            while(rs.next()){
             String name=rs.getString(1).trim();
            String lastName=rs.getString(2).trim();
            String ar=rs.getString(3).trim();
            int id=rs.getInt(4);
            
//            Blob blob = rs.getBlob("image");
//        byte[] imageData = blob.getBytes(1, (int) blob.length());

        // Store image data in a variable
        //String base64Image = Base64.getEncoder().encodeToString(imageData);
       
     %>
     <div>
             <div class='col-sm-3'>
               <div class='card' style='width: 20rem;'>
              
             
                   <img class='card-img-top' src='view.jsp?id=<%= id%>' width=100% alt='Card image cap'></img>
        
  
           <div class='card-body'>
               <h5 class='card-title'>FirstName:
             <%= name %>
            </h5>
               <p class='card-text'>LastName:
              <%= lastName%>
               </p>
                <p class='card-text'>Area:
             <%= ar%>
               </p>
             <a href='#' class='btn1 btn-primary' data-toggle="model" data-target="#login"  type="submit" style:"background-color:#f4511e" >View Full profile</a>
               </div>
               </div>
               </div>
     </div>
           <%   }   
           
           out.print("</br>");
           }
           
 else if(category.equals("cook")){
             ps=con.prepareStatement("Select fname,lname,area,mid,image from cooking where area=? and salary=?");
            ps.setString(1, area1);
            ps.setString(2, salary);
              ResultSet rs=ps.executeQuery();
            while(rs.next()){
             String name=rs.getString(1).trim();
            String lastName=rs.getString(2).trim();
            String ar=rs.getString(3).trim();
            int id=rs.getInt(4);
%>
             <div class='col-sm-3'>
               <div class='card' style='width: 20rem;'>
              
             
                   <img class='card-img-top' src='cook.jsp?id=<%= id%>' width=100% alt='Card image cap'></img>
        
  
           <div class='card-body'>
               <h5 class='card-title'>FirstName:
             <%= name %>
            </h5>
               <p class='card-text'>LastName:
              <%= lastName%>
               </p>
                <p class='card-text'>Area:
             <%= ar%>
               </p>
             <a href='#'  id="#myBtn" style:"background-color:#f4511e" >View Full Profile</a>
               </div>
               </div>
               </div>
           <% 

           }   
           
           
           }


          
              }
           
            catch(Exception e){
            
           }
        %>
     
    
    
    

    </body>
</html>
