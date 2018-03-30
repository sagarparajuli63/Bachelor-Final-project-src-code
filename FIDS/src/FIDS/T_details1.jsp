<%@ page import="java.io.*,java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>

<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#990000" width="100%" id="AutoNumber1">
  <tr>
    <td width="14%" align="center">A/c</td>
    <td width="14%" align="center">Order No</td>
    <td width="14%" align="center">Vender No</td>
    <td width="14%" align="center">Date</td>
    <td width="14%" align="center">Time</td>
    <td width="15%" align="center">IP Address</td>
    <td width="15%" align="center">Price</td>
  </tr>
  <%
  db.mkcon();
  String snt="select * from transactiondetails";
  ResultSet rs=db.fetch(snt);
  while(rs.next())
  {
  String ac=rs.getString(1);
  String order=rs.getString(2);
  String ven=rs.getString(3);
   String dates=rs.getString(4);
   String time=rs.getString(5);
   String add=rs.getString(6);
   String price=rs.getString(7);
    
  %>
  <tr>
    <td width="14%" align="center">&nbsp;<%=ac%></td>
    <td width="14%" align="center">&nbsp;<%=order%></td>
    <td width="14%" align="center">&nbsp;<%=ven%></td>
    <td width="14%" align="center">&nbsp;<%=dates%></td>
    <td width="14%" align="center">&nbsp;<%=time%></td>
    <td width="15%" align="center">&nbsp;<%=add%></td>
    <td width="15%" align="center">&nbsp;<%=price%></td>
  </tr>
  <%}%>
</table>

</body>

</html>