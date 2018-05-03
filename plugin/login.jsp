<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ page import= "dbconnection.dbconnection" %>
    <%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
<%
try{
dbconnection db = new dbconnection();
Connection con =db.getConnection();
String id = request.getParameter("id");   
String pass = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
PreparedStatement pst = con.prepareStatement("select * from student where stu_id=? and pass=?");
pst.setString(1, id);
pst.setString(2, pass); 
ResultSet rs = pst.executeQuery();  
if(rs.next()) 
{

if(rs.getString(2).equals(id)) 
{
	response.sendRedirect("Home.html"); 
}}
else
{ response.sendRedirect("error.html"); }         
}
catch(Exception e){       
	out.print(e);} 

%>
<%-- 
try{
        String id = request.getParameter("id");   
        String pass = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/comp","root","12345"); 

        PreparedStatement pst = con.prepareStatement("select * from 'student' where user=? and pass=?");
        pst.setString(1, id);
        pst.setString(2, pass);
        ResultSet rs = pst.executeQuery();  
        if(rs.next()) 
        { 
        if(rs.getString(2).equals(pass)) 
        {
        	response.sendRedirect("Home.html"); 
        }}
        else
        { response.sendRedirect("error.html"); }         
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");}   
       --%>
</body>
</html>