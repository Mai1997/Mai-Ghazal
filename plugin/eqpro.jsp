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
String op1=("Low"); 
String op2=("Mid"); 
String op3=("High"); 

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/comp", "root", "12345");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into question(question_txt,op1,op2,op3,category_id)values('"+question_txt+"','"+op1+"','"+op2+"','"+op3+"','"+4+"')");



response.sendRedirect("EQpro.html");} 

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}






 






%>
</body>
</html>