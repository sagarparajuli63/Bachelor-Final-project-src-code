<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="dbdir.DbHead"/>

<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<%
String id=request.getParameter("T1");
String pwd=request.getParameter("T2");
db.mkcon();
String snt="select * from bankemp where eid='"+id+"' and passkey='"+pwd+"'";
System.out.println("Your sql Query===>"+snt);
ResultSet rs=db.fetch(snt);
System.out.println("Your sql ResultSet ===>"+rs);

if(rs.next())
{

%>
<jsp:forward page="emp.jsp"/>
<%
}
else
{
%>
<script>
history.back(1)
alert('Sorry try again...');
</script>
<%}%>
</body>

</html>