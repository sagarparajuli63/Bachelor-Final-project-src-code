<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>My Shopping Cart</title>
</head>

<body>
<jsp:include page="header.htm"/>
<%
String cat=request.getParameter("cat");
session.setAttribute("Mycat",cat);
String pname=request.getParameter("pname");
session.setAttribute("Mypname",pname);
String deta=request.getParameter("deta");
session.setAttribute("Mydeta",deta);
String price=request.getParameter("price");
session.setAttribute("Myprice",price);
%>
<form name="frm" method="POST" action="Process.jsp" onSubmit="return validate();">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
    <td width="100%">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
    <marquee style="color: #0000FF; font-weight: bold">�&nbsp; Over 100 brands, 5 million books, 7 million products�� try getting it cheaper!&nbsp; � Safe shopping certified by �Thawte�&nbsp;&nbsp; �&nbsp; We do not store any credit card information&nbsp;&nbsp; �&nbsp; 98.1 % of our customers have had a satisfying experience&nbsp;&nbsp; �&nbsp; 95 % orders shipped in < 5 days, 70 % in < 3 days&nbsp;&nbsp; �&nbsp; 100 % refund guarantee, if we fail to ship</marquee></td>
  </tr>
  <tr>
    <td width="100%">
    <p class="MsoNormal" align="center"><font color="#FF0000">
    <span class="bluetext"><strong>Balance is not sufficient to carry out the 
    Transaction !</strong></span></font></td>
  </tr>
  <tr>
    <td width="100%">
    <p align="center">
    <font color="#FF0000">want to buy another product</font>&nbsp; <a href="http://192.168.1.4:8080/FIDS/">Click 
	Here</a></td>
  </tr>
  <tr>
    <td width="100%">&nbsp;</td>
  </tr>
</table>
</form>
<table border="0" width="100%">
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td><jsp:include page="footer.html"/></td>
	</tr>
</table>

</body>

</html>