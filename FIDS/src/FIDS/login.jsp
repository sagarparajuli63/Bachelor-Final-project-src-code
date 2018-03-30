<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Merchant Login Page</title>

<script>
function validateForm()
{
var x=document.frm.u_id.value
var y=document.frm.P_wd.value

if (x==null || x=="")
  {
  alert("Please Enter the User ID");
  document.frm.u_id.focus();
  return false;
  }
  else if (y==null || y=="")
  {
  alert("Please Enter the Password");
  document.frm.P_wd.focus();
  return false;
  }

}
</script>

</head>

<body>
<jsp:include page="header.htm"/>

<form name="frm" onsubmit="return validateForm()" method="POST" action="logincode.jsp">
<table cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-top-width:1px; border-bottom-style:solid; border-bottom-width:1px" bordercolor="#0000FF" width="100%" id="AutoNumber1">
    <tr>
      <td width="100%" style="border-style: none; border-width: medium" bgcolor="#0000FF" align="center" colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td width="100%" style="border-style: none; border-width: medium" align="center" colspan="4">
		<p align="center"><i><b>Please enter Your User Id And 
		Password...</b></i></p>
		<p>&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center" height="19">&nbsp;</td>
      <td width="1%" style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" align="center" height="20">&nbsp;</td>
      <td width="36%" style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" align="center" height="20">&nbsp;</td>
      <td width="29%" style="border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center" height="19">&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="1%" style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="36%" style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="29%" style="border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="1%" style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">
      &nbsp;</td>
      <td width="36%" style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">
      <b>&nbsp;&nbsp;&nbsp;&nbsp; User ID:</b><font color="#CC99FF"><b> </b>
      <input type="text" name="u_id" size="21"></font></td>
      <td width="29%" style="border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="1%" style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="36%" style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="29%" style="border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="1%" style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">
      &nbsp;</td>
      <td width="36%" style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">
      <b>Password: </b>
      <font color="#CC99FF"><input type="password" name="P_wd" size="20"></font></td>
      <td width="29%" style="border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="1%" style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="36%" style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="29%" style="border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center" height="27">&nbsp;</td>
      <td width="1%" style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center" height="27">&nbsp;</td>
      <td width="36%" style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center" height="27">
      <p align="center"><font color="#CC99FF"><input type="submit" value="Login&gt;&gt;" name="B1"></font></td>
      <td width="29%" style="border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center" height="27">&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="1%" style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="36%" style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
      <td width="29%" style="border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center">&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-left-style:none; border-left-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center" height="20">&nbsp;</td>
      <td width="1%" style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center" height="20">&nbsp;</td>
      <td width="36%" style="border-left-width:medium; border-right-style:solid; border-right-width:1px; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1px" align="center" height="20">&nbsp;</td>
      <td width="29%" style="border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:none; border-bottom-width:medium" align="center" height="20">&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-style: none; border-width: medium" align="center" height="29">&nbsp;</td>
      <td width="1%" style="border-style: none; border-width: medium" align="center" height="29">&nbsp;</td>
      <td width="36%" style="border-style: none; border-width: medium" align="center" height="29">&nbsp;</td>
      <td width="29%" style="border-style: none; border-width: medium" align="center" height="29">&nbsp;</td>
    </tr>
    <tr>
      <td width="34%" style="border-style: none; border-width: medium" bgcolor="#0000FF" align="center">&nbsp;</td>
      <td width="1%" style="border-style: none; border-width: medium" bgcolor="#0000FF" align="center">&nbsp;</td>
      <td width="36%" style="border-style: none; border-width: medium" bgcolor="#0000FF" align="center">&nbsp;</td>
      <td width="29%" style="border-style: none; border-width: medium" bgcolor="#0000FF" align="center">&nbsp;</td>
    </tr>
    </table>
</form>
<jsp:include page="footer.html"/>

</body>

</html>