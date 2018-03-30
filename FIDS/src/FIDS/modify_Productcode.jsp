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
db.mkcon();
String c=request.getParameter("D1");
String p_id=request.getParameter("pid");
String product=request.getParameter("pro");
String D_tails=request.getParameter("details");
String price=request.getParameter("price");
String snt="update product set category='"+c+"',pro_id='"+p_id+"',pro_name='"+product+"',detail='"+D_tails+"',price='"+price+"' where pro_id='"+p_id+"'";
int i=db.dbinsert(snt);
if(i>0)
{
%>
<script>
alert('Category <%=product%> Saved...');
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
alert('Sorry Try Again...');
</script>
<jsp:include page="Modify_Product.jsp"/>
<%
}
%>
</body>

</html>