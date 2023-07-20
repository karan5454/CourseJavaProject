<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Course</title>
</head>
<body>
<%
int id;
id = Integer.parseInt(request.getParameter("id"));
out.println(id);
Class.forName("com.mysql.jdbc.Driver");
Connection con;
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/course1", "root", "");
PreparedStatement ps = con.prepareStatement("delete from course where CourseID = '"+id+"'");
ps.executeUpdate();
response.sendRedirect("display.jsp");
%>
</body>
</html>