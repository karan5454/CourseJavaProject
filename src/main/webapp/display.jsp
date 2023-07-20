<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

<style>
th {
    background-color: pink;
    color: black;
}
tr {
    background-color: white;
    color: black;
}
</style>
<meta charset="ISO-8859-1">
<title>Course</title>
</head>
<body><center><a href="Index.html" class="btn btn-warning">Add new Record</a></center>
<br />

<table border="2px solid" align="center" height="400px" width="900px">
<tr>
<th>CourseID</th>
<th>CourseName</th>
<th>CoursePeriod</th>
<th>CourseFee</th>
<th>CourseCredits</th>
<th>Action</th>
</tr>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con;
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/course1", "root", "");

Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from course");
while (rs.next()) {
    %>
    <tr>
    <td><%= rs.getInt("CourseID") %></td>
    <td><%= rs.getString("CourseName") %></td>
    <td><%= rs.getString("CoursePeriod") %></td>
    <td><%= rs.getString("CourseFee") %></td>
    <td><%= rs.getInt("CourseCredits") %></td>    
     <td><a href="delete.jsp?id=<%= rs.getInt("CourseID") %>" class="btn btn-danger">Delete</a></td> 
    <td><a href="edit.jsp?id=<%= rs.getInt("CourseID") %>" class="btn btn-success">Edit</a></td>
    </tr>
    <%
}
%>
</table>
</body>
</html>