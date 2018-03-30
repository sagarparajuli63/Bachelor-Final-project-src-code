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
String snt="select * from product where category='1'";
db.mkcon();
ResultSet rs=db.fetch(snt);
if(rs.next())
{
String img=rs.getString(6);

%>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber1" height="187">
  <tr>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="118" style="border-style: none; border-width: medium" rowspan="8">
    <p align="center">
    <img border="0" src="pro_images/<%=img%>" width="159" height="147"></td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
  </tr>
  <tr>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
  </tr>
  <tr>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
  </tr>
  <tr>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
  </tr>
  <tr>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
  </tr>
  <tr>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
  </tr>
  <tr>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="16%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
    <td width="17%" height="19" style="border-style: none; border-width: medium">&nbsp;</td>
  </tr>
  <tr>
    <td width="16%" height="1" style="border-style: none; border-width: medium"></td>
    <td width="16%" height="1" style="border-style: none; border-width: medium"></td>
    <td width="17%" height="1" style="border-style: none; border-width: medium"></td>
    <td width="17%" height="1" style="border-style: none; border-width: medium"></td>
  </tr>
  </table>
<%
}
else
{
out.println("Upload Again...");
}
%>
</body>

</html>