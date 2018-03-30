<%@ page import="java.io.*,java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>

<%
String old_c=request.getParameter("D1");
String new_c=request.getParameter("T1");
String snt="update category set C_name='"+new_c+"' where C_name='"+old_c+"'";
String snt1="update product set category='"+new_c+"' where category='"+old_c+"'";

db.mkcon();
int i=db.dbinsert(snt);
int j=db.dbinsert(snt1);

if((i>0)&&(j>0))
{
%>
<script>
alert('Category <%=new_c%> Updeted...');
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
<jsp:include page="U_Category.jsp"/>
<%
}
%>
</body>

</html>