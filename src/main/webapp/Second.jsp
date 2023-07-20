<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course</title>
</head>
<body>
<%
String a, b, c, e;
int d ;
a = request.getParameter("t1");
b = request.getParameter("t2");
c = request.getParameter("t3");
d = Integer.parseInt(request.getParameter("t4"));
e = request.getParameter("t5");

Class.forName("com.mysql.jdbc.Driver");
Connection con;
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/course1", "root", "");
PreparedStatement ps = con.prepareStatement("insert into course (CourseID, CourseName, CoursePeriod, CourseFee, CourseCredits) values (?, ?, ?, ?, ?)");
ps.setString(1, a);
ps.setString(2, b);
ps.setString(3, c);
ps.setInt(4, d);
ps.setString(5, e);

int i = ps.executeUpdate();
if (i > 0) {
    out.println("<script>");
    out.println("alert('record saved');");
    out.println("window.location.href='display.jsp';");
    out.println("</script>");
} else {
    out.println("<script>alert('something wrong');</script>");
}
%>
</body>
</html>