<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Login Page For User</title>
<script>
function validateForm()
{
var x=document.frm.T1.value
var y=document.frm.T2.value

if (x==null || x=="")
  {
  alert("Please Enter the User ID");
  document.frm.T1.focus();
  return false;
  }
  else if (y==null || y=="")
  {
  alert("Please Enter the Password");
  document.frm.T2.focus();
  return false;
  }

}
</script>
</head>

<body style="text-align: center">
<jsp:include page="header.htm"/>
<form name="frm" onsubmit="return validateForm()" method="POST" action="sningcode1.jsp">

<p>
<center><font color="#CC3300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font> 
<b>Please Enter Your User Id and 
Password&nbsp;</b><font color="#CC3300">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>
<a href="index.jsp">Home</a></b></font> <font color="#CC3300">&nbsp;</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</center>
<img src=image/havering-intranet-login.jpg align="left" width="306" height="156" /> 
</p>
<center>
<table  border="0" cellpadding="0" style="border-collapse: collapse; border-width: 1px; " bordercolor="#111111" width="" id="AutoNumber1" height="157" bgcolor="#FFFFFF">
    
    <tr>
      <td width="25%" style="border-style:none; border-width:medium; " height="31" align="right">
      <b>User ID:</b><font color="#FFFFFF">&nbsp; </font></td>
      <td width="41%" style="border-style:none; border-width:medium; " height="31">
      <font color="#FFFFFF">
      <input type="text" name="T1" size="21"></font></td>
    </tr>
    <tr>
      <td width="25%" style="border-style:none; border-width:medium; " height="19" align="right">
      &nbsp;</td>
      <td width="41%" style="border-style:none; border-width:medium; " height="19">
      &nbsp;</td>
    </tr>
    <tr>
      <td width="25%" style="border-style:none; border-width:medium; " height="32" align="right">
      <b>Password: </b></td>
      <td width="41%" style="border-style:none; border-width:medium; " height="32">
      <font color="#FFFFFF">
      <input type="password" name="T2" size="21"></font></td>
    </tr>
    <tr>
      <td width="25%" style="border-style:none; border-width:medium; " height="19" align="right">
      &nbsp;</td>
      <td width="41%" style="border-style:none; border-width:medium; " height="19">
      &nbsp;</td>
    </tr>
    <tr>
      <td width="25%" style="border-style:none; border-width:medium; " height="56">
      &nbsp;</td>
      <td width="41%" style="border-style:none; border-width:medium; " height="56">
      <font color="#FFFFFF">
      <input type="submit" value="Login&gt;&gt;" name="B1"></font></td>
    </tr>
    </table>
  </center>
</form>
<jsp:include page="footer.html"/>
</body>
</html>