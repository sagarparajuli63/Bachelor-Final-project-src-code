<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<%
String name=request.getParameter("T1");
String Addr=request.getParameter("T2");
String Uid=request.getParameter("T3");
String pwd=request.getParameter("T4");
String mobile=request.getParameter("T5");
String email=request.getParameter("T6");
String q=request.getParameter("T7");
String a=request.getParameter("T8");
System.out.println("Question is:"+q);
String snt="insert into users value('"+pwd+"','"+Uid+"','"+name+"','"+mobile+"','"+email+"','"+Addr+"','"+q+"','"+a+"')";
db.mkcon();
int i=db.dbinsert(snt);
if(i>0)
{

%>
<script>
alert('Your All Details are Registered in our Database...');
</script>
<jsp:include page="index.jsp"/> 
<%
}
else
{
%>
<script>
alert('Sorry Try Again...');
</script>
<jsp:include page="index.jsp"/> 
<%
}
%>
</body>

</html>