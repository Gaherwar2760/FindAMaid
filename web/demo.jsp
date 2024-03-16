<%-- 
    Document   : demo.jsp
    Created on : 07-Mar-2024, 3:20:37 pm
    Author     : POONAM
--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Establishing database connection
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/FindAMaid?useSSL=false","root","root");

        // Retrieving image data from database
        pstmt = conn.prepareStatement("SELECT image FROM babys");
       
        rs = pstmt.executeQuery();

        if (rs.next()) {
            // Encoding image data to Base64
            byte[] imageData = rs.getBytes("image");
            String base64Image = Base64.getEncoder().encodeToString(imageData);

            // Displaying the image in HTML
%>
            <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Image" />
<%
        } else {
            // Image not found in the database
            out.println("Image not found");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Closing resources
        try { if (rs != null) rs.close(); } catch (Exception e) {}
        try { if (pstmt != null) pstmt.close(); } catch (Exception e) {}
        try { if (conn != null) conn.close(); } catch (Exception e) {}
    }
%>
