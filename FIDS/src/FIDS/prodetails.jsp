<%@ page import="java.sql.*"%>
<jsp:useBean id="db" class="dbdir.MyDbCon"/>
<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="refresh" content="10000">
<title>Product Details</title>
<style>
<!--
.ebay{font-family:Arial,Helvetica,sans-serif;}
.ebay{font-family:Arial,Helvetica,sans-serif;}
.ebay div{font-size:x-small;font-family:Arial}

.ebay span{font-size:x-small;font-family:Arial}

.ebay .titlePurchase{color:#515151;}
-->
</style>

</head>

<body style="text-align: center">
<jsp:include page="header.htm"/>

<form name="frm" method="POST" action="CheckOut.jsp">
<%
db.mkcon();
String cat=null;
String pid=request.getParameter("value");
String snt="select * from product where pro_id='"+pid+"'";
ResultSet rs=db.fetch(snt);
rs.next();

cat=rs.getString(1);
String pname=rs.getString(3);
String deta=rs.getString(4);
String price=rs.getString(5);
String img=rs.getString(6);
String Ven=rs.getString(7);

%>
<table border="1" width="994" id="table1" style="border-width: 0px" height="491">
	<tr>
		<td style="border-style: none; border-width: medium" background="image/back.gif" height="57" width="984">
		<p align="right">
        <a href="userpage1.jsp" style="text-decoration: none; font-style: italic; font-weight: 700">
        Home</a><b><i><font color="#0000FF"> |</font></i></b>
        <a href="logout.jsp" style="text-decoration: none; font-style: italic; font-weight: 700">
        Logout</a></td>
	</tr>
	<tr>
		<td style="border-style: none; border-width: medium" height="377" width="984">
		<img border="0" src="pro_images/<%=img%>" width="318" height="342" align="left">&nbsp;&nbsp;<font color="#0000FF">&nbsp; 
        Product Name:</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FF0000"><font size="5"><b><i><%=pname%></i></b></font> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onClick="window.location.reload(true );">Reload</a></font>
		<p>&nbsp;&nbsp;&nbsp;&nbsp; <font color="#0000FF">Price&nbsp; :</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <%=price%><p>&nbsp;&nbsp;&nbsp;&nbsp; 
		<font color="#0000FF">&nbsp;Details:-</font><%=deta%><p><span class="ebay">
		<span class="titlePurchase">&nbsp;</span></span><p>
		<span class="ebay"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Listing 
        and payment details:&nbsp;<font color="#0000FF">Show</font></b></span><p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="ebay"><font color="#0000FF"><b>&nbsp;Vender : <%=Ven%></b></font></span><p>
		<input type="hidden" value="<%=cat%>" name="cat">
		<input type="hidden" value="<%=pname%>" name="pname">
		<input type="hidden" value="<%=deta%>" name="deta">
		<input type="hidden" value="<%=price%>" name="price">
		<input type="hidden" value="<%=Ven%>" name="Ven">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="Buy&gt;&gt;  " name="B1" style="color: #FFFFFF; font-size: 1em; font-weight: bold; border-style: outset; border-width: 3px; padding: 0; background-color: #99CCFF">&nbsp;&nbsp;&nbsp;
		<p>
		
		<p>
	</form>	
<form method=post action=userpage1.jsp>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value=" Cancel" name="B2" style="color: #FFFFFF; font-size: 1em; font-weight: bold;
		border-style: outset; border-width: 3px; padding: 0; background-color: #99CCFF">
</form>
</td>
	</tr>
	<tr>
		<td style="border-style: none; border-width: medium" bgcolor="#FFFFFF" width="984" height="39">
		<table border="1" cellpadding="0" cellspacing="0" style="border-width:0; border-collapse: collapse; " bordercolor="#111111" width="100%" id="AutoNumber1">
          <tr>
      <td width="100%" style="border-style: none; border-width: medium" bgcolor="#CCFFFF" colspan="3">
      <p align="center"><b><i><font color="#0000FF">Related Products.... </font>
      </i></b></td>
          </tr>
          <tr>
      <td width="25%" style="border-style: none; border-width: medium" bgcolor="#CCFFFF">
      <p align="center"><b><i><font color="#33CCFF">Sample Picture</font></i></b></td>
      <td width="50%" style="border-style:none; border-width:medium; " bgcolor="#CCFFFF">
      <p align="center"><b><i><font color="#33CCFF">Details</font></i></b></td>
      <td width="25%" style="border-style:none; border-width:medium; " bgcolor="#CCFFFF">
      <p align="center"><b><i><font color="#33CCFF">Price...(INR)</font></i></b></td>
          </tr>
          <tr>
            <td width="100%" style="border-style: none; border-width: medium" colspan="3"><table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; border-left-width:0; border-right-width:0; border-top-width:0" bordercolor="#111111" width="100%" id="AutoNumber3">
       <%
       db.mkcon();
       //String snt1=SELECT `column` FROM `table` ORDER BY RAND() LIMIT 5
       String snt1="select * from product where category='"+cat+"'";
       ResultSet rs1=db.fetch(snt1);
       while(rs1.next())
       {
       String id=rs1.getString(2);
       String pnames=rs1.getString(3);
       String details=rs1.getString(4);
       String prices=rs1.getString(5);
       String imgs=rs1.getString(6);
       %>
		 <tr>
          <td width="25%" style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" bordercolor="#800000" bgcolor="#FFFFFF">
          <a href="prodetails.jsp?value=<%=id%>"><img border="0" width="137" height="147" src="pro_images/<%=imgs%>"></a></td>
          <td width="50%" style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" bordercolor="#800000" align="center" bgcolor="#FFFFFF">
          <font color="#33CCFF"><b><%=pnames%></b></font><p>
          <textarea rows="7" readonly name="S1" cols="40" style="border: 1px solid #FFFFFF; background-color: #FFFFFF"><%=details%>

Vender : <%=Ven%></textarea></td>
          <td width="25%" style="border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" bordercolor="#800000" align="center" bgcolor="#FFFFFF">
          <a href="prodetails.jsp?value=<%=id%>" style="text-decoration: none; font-weight: 700">
          <font color="#FF3300"><%=prices%></font></a></td>
        </tr>
        <%}%>
      </table>
</td>
          </tr>
        </table>
        </td>
	</tr>
</table>


<jsp:include page="footer.html"/>

</body>
</html>