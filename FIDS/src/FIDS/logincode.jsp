<%@ page import="java.io.*,java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Login Page</title>
</head>

<body>
<%
 String id=request.getParameter("u_id");
 String pd=request.getParameter("P_wd");
 String snt="select * from m_login where uid='"+id+"' and pwd='"+pd+"'";
 db.mkcon();
 ResultSet rs=db.fetch(snt);
 if(rs.next())
 {
 %>
<jsp:forward page="admin.jsp"/>
 <%
	 
 }
 else
 {
 %>
 <script>
 history.back(1)
 alert('Sorry Try Again..');
 </script>
 <%
 }
%>

</body>

</html>