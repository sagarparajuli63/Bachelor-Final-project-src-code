<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Employee Login Page</title>
<script>
function validateForm(){
var x=document.form1.T1.value
var y=document.form1.T2.value

if(x==""||x==null){
alert("Please Enter The Employee ID")
document.form1.T1.focus()
return false
}
else if(y==""||y==null){
alert("Please Enter The Password")
document.form1.T2.focus()
return false

}
}
</script>
</head>

<body>
<jsp:include page="header.html"/>
<form name="form1" onsubmit="return validateForm()" method="POST" action="logincode.jsp">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%" id="AutoNumber1" height="162">
    <tr>
      <td width="80%" style="border-style: none; border-width: medium" colspan="4" height="17">
      <p align="center">
      <marquee style="text-decoration: blink; color: #FF0000; font-weight:bold" width="994" behavior="alternate" bgcolor="#FFBD9D">W E L C O M E&nbsp;&nbsp; T O&nbsp;&nbsp; B A N K I N G&nbsp;&nbsp; M O D U LE</marquee></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="16">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="16">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="16">
      </td>
      <td width="20%" style="border-style: none; border-width: medium" height="16">
      </td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="43">
      </td>
      <td width="40%" style="border-style: none; border-width: medium" height="43" colspan="2">
      <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <img border="0" src="images/money.jpg" width="137" height="196"></td>
      <td width="20%" style="border-style: none; border-width: medium" height="43">
      </td>
    </tr>
    <tr>
      <td width="80%" style="border-style: none; border-width: medium" height="62" colspan="4">
      <fieldset style="border: 1px solid #000000; padding: 2px">
		<legend><font color="#0000FF"><b>&nbsp;Bank Employee Login Area</b></font></legend>
		<p align="center">&nbsp;<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee ID</b>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" name="T1" size="20" tabindex="1"><p align="center"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="password" name="T2" size="20" tabindex="2"></p>
		<p align="center">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit" value="Login" name="B1" tabindex="3"></p>
		</fieldset></td>
    </tr>
    <tr>
      <td width="20%" style="border-style: none; border-width: medium" height="31">&nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" align="right" height="31">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="31">
      &nbsp;</td>
      <td width="20%" style="border-style: none; border-width: medium" height="31">&nbsp;</td>
    </tr>
    </table>
</form>
<jsp:include page="footer.html"/>
</body>

</html>