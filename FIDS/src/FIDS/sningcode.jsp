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
String uid=request.getParameter("T1");
String upwd=request.getParameter("T2");
String IP1=request.getRemoteAddr();

String snt="select * from users where password='"+upwd+"' and user='"+uid+"'";
ResultSet rs=db.fetch(snt);
if(rs.next())
{
session.setAttribute("userids",uid);
session.setAttribute("pass",upwd);
session.setAttribute("IP",IP1);

%>
<jsp:forward page="userpage.jsp"/>
<%
}
else
{
%>
<script>
history.back('1')
alert('Sorry Try again...');
</script>
<%
	}
%>
</body>
</html>