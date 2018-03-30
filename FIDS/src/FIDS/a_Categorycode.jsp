<%@ page import="java.io.*,java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Add New Category</title>
</head>

<body>
<%
String Cate=request.getParameter("T1");
String snt="insert into category value('"+Cate+"')";
db.mkcon();
int i=db.dbinsert(snt);
if(i>0)
{
%>
<script>
alert('Category <%=Cate%> Added...');
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

<%
}
%>
</body>

</html>