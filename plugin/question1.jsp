<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String question_txt=request.getParameter("question");
String op11=request.getParameter("op1"); 
String op22=request.getParameter("op2"); 
String op33=request.getParameter("op3"); 


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/comp", "root", "12345");
Statement stl=conn.createStatement();
Statement stl1=conn.createStatement();
Statement stl2=conn.createStatement();
Statement stl3=conn.createStatement();

int i0=stl.executeUpdate("insert into question(question_txt)values('"+question_txt+"')");
int i11=stl1.executeUpdate("insert into answer(option_txt,question_id)values('"+op11+"','"+13+"')");
int i22=stl2.executeUpdate("insert into answer(option_txt,question_id)values('"+op22+"','"+13+"')");
int i33=stl3.executeUpdate("insert into answer(option_txt,question_id)values('"+op33+"','"+13+"')");

response.sendRedirect("opclo.html");


} 

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}



%>
</body>
</html>