<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException" %>
<%@page import="java.text.DateFormatSymbols" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>professor</title>
<meta name="generator" content="WYSIWYG Web Builder 11 Trial Version - http://www.wysiwygwebbuilder.com">
<link href="Login.css" rel="stylesheet">
<link href="Professor.css" rel="stylesheet">

</head>
<body >

<a href="http://www.wysiwygwebbuilder.com" target="_blank"><img src="images/builtwithwwb11.png" alt="WYSIWYG Web Builder" style="position:absolute;left:17px;top:1680px;border-width:0;z-index:250"></a>
<div id="wb_Text1" style="position:absolute;left:17px;top:6px;width:518px;height:74px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:53px;">KNOWITALL</span></div>
<input type="text" id="Editbox1" style="position:absolute;left:120px;top:133px;width:256px;height:23px;line-height:23px;z-index:2;" name="Search" value="">
<div id="wb_Text7" style="position:absolute;left:40px;top:146px;width:80px;height:20px;z-index:3;text-align:left;">
<span style="color:#9ACD32;font-family:'Bookman Old Style';font-size:17px;"><strong>&nbsp; Search</strong></span></div>
<input type="button" id="Button1" name="OK" value="OK" style="position:absolute;left:397px;top:133px;width:51px;height:33px;z-index:4;">
<div id="wb_Shape2" style="position:absolute;left:17px;top:248px;width:1297px;height:1398px;z-index:5;">
<img src="images/img0012.png" id="Shape2" alt="" style="width:1297px;height:1398px;"></div>
<div id="wb_Shape3" style="position:absolute;left:120px;top:345px;width:469px;height:200px;z-index:6;">
<img src="images/img0013.png" id="Shape3" alt="" style="width:469px;height:200px;"></div>
<div id="wb_Shape4" style="position:absolute;left:712px;top:344px;width:469px;height:200px;z-index:7;">
<img src="images/img0014.png" id="Shape4" alt="" style="width:469px;height:200px;"></div>
<div id="wb_Text3" style="position:absolute;left:176px;top:411px;width:382px;height:67px;z-index:8;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:37px;"><strong><a href="./EQpro.html" class="style2">Eveluotion Question</a></strong></span><span style="color:#000000;font-family:Arial;font-size:11px;"><br></span></div>
<div id="wb_Text2" style="position:absolute;left:792px;top:412px;width:438px;height:67px;z-index:9;text-align:left;">
<span style="color:#000000;font-family:'Comic Sans MS';font-size:37px;"><strong> <a href="./oppro.html" class="style2">Question Option</a></strong></span><span style="color:#000000;font-family:Arial;font-size:11px;"><br></span></div>


<div id="wb_Shape5" style="position:absolute;left:120px;top:675px;width:1126px;height:806px;z-index:10;background:url('images/img0015.png');padding: 20px;">

<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/comp", "root", "12345");
Statement st=conn.createStatement();

ResultSet r = st.executeQuery("select * from question where category_id = '4'");

         ArrayList  questions =new ArrayList();
             try {
             while (r.next()) {
             out.println(r.getString(2) + "\n" );
             System.out.println("");
              System.out.println("");
             out.println(r.getString(3));
             out.println(r.getString(4));
             out.println(r.getString(5));

                r.getString(2);
                r.getString(3);
                r.getString(4);
                r.getString(5);
               
            }

               
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
} 
 
finally{
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
} 
finally{
}


%>


<%


int i = 0;

for(i = 0 ; i < 5 ; i++)
{
;
} 

%>








</div>




<div id="wb_Shape8" style="position:absolute;left:747px;top:126px;width:184px;height:47px;z-index:11;">
<a href="./myprofilf.html"><img src="images/img0009.png" id="Shape8" alt="" style="width:184px;height:47px;"></a></div>
<div id="wb_Shape7" style="position:absolute;left:947px;top:126px;width:168px;height:47px;z-index:12;">
<a href="./about.html"><img src="images/img0010.png" id="Shape7" alt="" style="width:168px;height:47px;"></a></div>
<div id="wb_Shape1" style="position:absolute;left:558px;top:126px;width:168px;height:47px;z-index:13;">
<a href="./Home.html"><img src="images/img0011.png" id="Shape1" alt="" style="width:168px;height:47px;"></a></div>
<div id="wb_Shape9" style="position:absolute;left:1131px;top:126px;width:168px;height:47px;z-index:14;">
<a href="./logout.html"><img src="images/img0044.png" id="Shape9" alt="" style="width:168px;height:47px;"></a></div>
</body>
</html>