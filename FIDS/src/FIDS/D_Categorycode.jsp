<%@ page import="java.io.*,java.sql.*"%>
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
String c=request.getParameter("D1");
db.mkcon();
String snt="delete from category where C_name='"+c+"'";
int i=db.dbinsert(snt);
if(i>0)
{
%>
<script>
alert('Category <%=c%> Deleted...');
</script>
<p>&nbsp;</p>
<jsp:include page="admin.jsp"/>
<%
}
else
{
%>
<script>
history.back(1)
alert('Category Already Added...');
</script>
<jsp:include page="D_Category.jsp"/>
<%
}
%>
</body>

</html>