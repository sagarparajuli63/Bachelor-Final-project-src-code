<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Hi</title>
</head>

<body>
<jsp:include page="header.htm"/>


		<font size="5">Hi! Ready to register?</font><div class="titleHelpText" style="padding-bottom: 22px;">
			<b>It's your typical registration - it's free and fairly simple to 
			complete. Already registered ?
			<a href="sning1.jsp">Log In</a>.Go to 
			<a href="index.jsp">Home</a> page</b><p style="margin-top: -2px"></div>
	<table border="0" width="966" height="244">
		<tr>
			<td width="300">
		<div class="textboxAlign" style="padding-bottom: 10px;">
	<b>Your privacy is important to us</b></div>
		<div class="textbox">
			We does not rent or sell your personal information to third parties 
			without your consent. To learn more, read our privacy policy. <br>
			<br>
			Your address will be used for shipping your purchase or receiving 
			payment from buyers.</div>
&nbsp;<p>&nbsp;</td>
			<td height="240" width="656">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<form method="POST" name="frm" action="reg_code.jsp" onSubmit="return validate();">

			<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Name:-</b><input type="text" name="T1" size="21">
			<img border="0" src="image/connecting1.gif" width="294" height="224" align="right"><p><b>Postal Address:-</b><input type="text" name="T2" size="21">&nbsp;&nbsp;&nbsp;&nbsp;
			</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>User ID:-</b><input type="text" name="T3" size="21"></p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <b>Password:-</b><input type="password" name="T4" size="21"></p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> &nbsp;Mobile:-</b><input type="text" name="T5" size="21">&nbsp;      
</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<b> 
			Email:-</b><input type="text" name="T6" size="21"></p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>&nbsp;Question :-</b><select size="1" name="T7">
            <option selected value="Select Question">-Select Question-</option>
            <option value="How r u?">How R u ?</option>
			</select>
			</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <b>Answer:-</b><input type="text" name="T8" size="20"> </p>
			<ul>
				<li><b>I accept the
				User Agreement and
				Privacy Policy.</b></li>
				<li><b>I may receive communications and can change my 
				notification preferences in My Site.</b></li>
				<li><b>I'm at least 18 years old.</b></li>
			</ul>
			<p>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
			<p>&nbsp;</td>
			</form>
		</tr>
</table>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
<jsp:include page="footer.html"/>
</body>

</html>
