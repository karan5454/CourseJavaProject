<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Your Cousre</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<table border="2px solid" align="center" height="500px" width="900px">
<tr align="center" bgcolor="pink">
<td><strong>Edit Course</strong></td>
</tr>
<tr align="center" bgcolor="gead">
<td>
<%
int id;
id=Integer.parseInt(request.getParameter("id")); 
out.println(id);
 Class.forName("com.mysql.jdbc.Driver");
Connection con;
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/course1","root","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from course where CourseID='"+id+"'");
while(rs.next())
{
%>
</td>
<tr align="center">
<td>
<form action="update.jsp" method="post">
<input type="hidden" name="t1" value="<%=rs.getInt(1)  %>"><br>
<tr align="center">
<td>
<h4>Edit Course Name :</h4>
<input type="text" name="t2" value="<%=rs.getString(2)  %>"><br>
</td>
</tr>
<tr align="center">
<td>
<h4>Edit Course Period :</h4>
<input type="text" name="t3" value="<%=rs.getString(3)  %>">
</td>
</tr>
<tr align="center">
<td>
<h4>Edit Course Fee :</h4>
<input type="text" name="t4" value="<%=rs.getString(4)  %>"><br>
</td>
</tr>
<tr align="center">
<td>
<h4>Edit Course Credits :</h4>

<input type="text" name="t5" value="<%=rs.getInt(5)  %>"><br>
</td>
</tr>
<tr align="center">
<td>
<button type="submit" value="update" class="btn btn-success">Update</button>

</td>
</tr>
</form>
<%
}
%>
</td>
</table>
</body>
</html>