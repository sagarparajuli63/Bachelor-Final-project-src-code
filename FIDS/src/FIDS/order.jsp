<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title></title>
</head>

<body>
<%
db.mkcon();
String uid=request.getParameter("login");
String upwd=request.getParameter("passwd");
String pwd=(String)session.getAttribute("pass");
String id=(String)session.getAttribute("userids");
String ip=(String)session.getAttribute("IP");
System.out.println(ip);

String snt="select * from users where password='"+upwd+"' and user='"+uid+"'";
ResultSet rs=db.fetch(snt);
//if((rs.next()) && (uid.equals(id)) && (upwd.equals(pwd)))
if(rs.next())
{
System.out.println("Your id & Passkey==>"+pwd+""+id);
%>
<jsp:forward page="orderSummary.jsp"/>
<%
}
else
{
%>
<script>
history.back('1')
alert('Sorry Try again...');
</script>
<%}%>
</body>
</html>