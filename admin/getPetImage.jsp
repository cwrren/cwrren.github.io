<%-- 
    Document   : getImage
    Created on : Jan 30, 2021, 10:26:47 PM
    Author     : cwrre
--%>

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="vetclinic.DBConnection"%>

<%
    Blob image = null;
    Connection con = null;
    byte[ ] imgData = null ;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        int petID = Integer.parseInt(request.getParameter("petID"));
        Class.forName("com.mysql.jdbc.Driver");
        DBConnection db = new DBConnection();
        con = db.getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery("select pic from pet where petID = '"+petID+"'");
        if (rs.next()) {
        image = rs.getBlob(1);
        imgData = image.getBytes(1,(int)image.length());
        }
        else {
        out.println("Display Blob Example");
        out.println("image not found for given id>");
        return;
        }
        // display the image
        response.setContentType("image/jpg");
        OutputStream o = response.getOutputStream();
        o.write(imgData);
        o.flush();
        o.close();
    } catch (Exception e) {
        out.println("Unable To Display image");
        out.println("Image Display Error=" + e.getMessage());
        return;
    } finally {
        try {
            rs.close();
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
