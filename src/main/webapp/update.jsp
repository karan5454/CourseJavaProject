<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Course</title>
</head>
<body>
<% 

int a,b;
String x,y,z;                                                
a=Integer.parseInt(request.getParameter("t1"));
x=request.getParameter("t2");
y=request.getParameter("t3");
z=request.getParameter("t4");
 b=Integer.parseInt(request.getParameter("t5"));





Class.forName("com.mysql.jdbc.Driver");
Connection con;
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/course1","root","");

PreparedStatement ps=con.prepareStatement("update course set CourseName='"+x+"' , CoursePeriod='"+y+"',CourseFee='"+z+"',CourseCredits='"+b+"' where CourseID='"+a+"'  ");
ps.executeUpdate();
response.sendRedirect("display.jsp");


%>
</body>
</html>