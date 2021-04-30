<%-- 
    Document   : track
    Created on : Apr 5, 2021, 4:39:52 PM
    Author     : cwrre
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Date"%>
<%@page import="vetclinic.Track"%>
<%@page import="vetclinic.Location"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String ip = request.getHeader("x-forwarded-for");
if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
ip = request.getHeader("Proxy-Client-IP");
}
if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
ip = request.getHeader("WL-Proxy-Client-IP");
}
if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
ip = request.getRemoteAddr();
}
Track obj_Get_Location_From_IP=new Track();
Location obj_Location_Use_Bean=obj_Get_Location_From_IP.get_ip_Details(ip);
%>
Location details of User<br>
1--IP Address--<%=ip %><br>
2--Country Code--<%=obj_Location_Use_Bean.getCountry_code() %><br>
3--Country--<%=obj_Location_Use_Bean.getCountry() %><br>
4--State--<%=obj_Location_Use_Bean.getState() %><br>
5--City--<%=obj_Location_Use_Bean.getCity() %><br>
6--ZIP--<%=obj_Location_Use_Bean.getZip() %><br>
7--Lat--<%=obj_Location_Use_Bean.getLat() %><br>
8--Lon--<%=obj_Location_Use_Bean.getLon() %><br>
9--Offset--<%=obj_Location_Use_Bean.getUtc_offset() %><br>
</body>
</html>
