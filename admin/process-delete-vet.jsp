<%--
    Document   : process-delete-doctor
    Created on : May 4, 2020, 11:26:38 PM
    Author     : Wei Ren
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, vetclinic.DBConnection, vetclinic.StaffDAO"%>
<%@page import="vetclinic.Staff"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int staffID = Integer.parseInt(request.getParameter("staffID"));
            DBConnection database = new DBConnection();
            StaffDAO staffDao = new StaffDAO();
            int result = staffDao.deleteStaff(staffID);
            database.closeConnection();
            if(result>0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Delete the Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("staff-list.jsp");
                rd.include(request,response);
            }
            %>
    </body>
</html>
