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
String pname=request.getParameter("pname");
String deta=request.getParameter("deta");
String price=request.getParameter("price");

%>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
    <td width="100%">
    <table cellSpacing="0" cellPadding="0" width="1003" align="center" border="0">
      <tr>
        <td align="middle" colSpan="2" height="80">
        <span style="FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #ff0000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif">
        You are transacting on a secure shopping server</span><br>
        <img src="image/shoplogintop.gif" width="471" height="35"> </td>
      </tr>
      <tr>
        <td vAlign="top" align="middle">
        <table id="tab" cellSpacing="0" cellPadding="0" width="406" border="0">
          <tr>
            <td class="logtopleft" height="29">&nbsp;</td>
            <td class="headinglogoin" align="middle" background="image/basetoplogin.gif" colSpan="2">
            Existing Shoppers Login Here</td>
            <td class="logtopright">&nbsp;</td>
          </tr>
          <tr>
            <td class="borleftlog" height="306" rowSpan="6">&nbsp;</td>
            <td class="textlogoin" colSpan="2" height="56">&nbsp;</td>
            <td class="borriglog" height="306" rowSpan="6">&nbsp;</td>
          </tr>
          <!-- Existing Shoppers Login Form -->
          <form id="form1" style="MARGIN: 0px" name="form1" onsubmit="return checkVal(this);" action="order.jsp" method="post">
            <tr>
              <td class="textlogoin" vAlign="top" height="20">User ID</td>
              <td class="boxtextlogoin" vAlign="center"><label>
              <input id="login" maxLength="50" size="15" name="login" autocomplete="OFF">
              </label></td>
            </tr>
            <tr>
              <td class="textlogoin" vAlign="top" height="20">Password</td>
              <td class="boxtextlogoin" vAlign="center"><label>
              <input id="passwd" type="password" maxLength="30" size="15" value name="passwd" autocomplete="OFF">
              </label></td>
            </tr>
            <tr>
              <td align="middle" colSpan="2" height="57">&nbsp;</td>
            </tr>
            <tr>
              <td align="middle" colSpan="2" height="34">
              <input type="image" src="image/signinloginbuttan.gif" value="submit" border="0" width="104" height="34">
              </td>
            </tr>
          </form>
          <!-- Existing Shoppers Login Form Ends-->
          <tr>
            <td id="passlogin" vAlign="bottom" align="middle" colSpan="2" height="45">&nbsp;</td>
          </tr>
          <tr>
            <td class="logbotleft" height="21">&nbsp;</td>
            <td class="borbtlog" colSpan="2">
            <img border="0" src="image/20-29_online_shopping.jpg" width="450" height="437"></td>
            <td class="logbotright">&nbsp;</td>
          </tr>
        </table>
        </td>
        <td vAlign="top" align="middle">
        <table id="tab" cellSpacing="0" cellPadding="0" width="406" border="0">
          <tr>
            <td class="logtopleft" height="29" width="4" bgcolor="#FFFFFF">&nbsp;</td>
            <td class="headinglogoin" align="middle" background="image/basetoplogin.gif">
            New Shoppers Register Here</td>
            <td class="logtopright">&nbsp;</td>
          </tr>
          <tr>
            <td class="borleftlog" height="306" rowSpan="5" width="4">&nbsp;</td>
            <td class="h1logoin" align="middle" height="50"><b>
            <font color="#FF0000">In hurry?</font></b></td>
            <td class="borriglog" height="306" rowSpan="5">&nbsp;</td>
          </tr>
          <tr>
            <td class="h2logoin" vAlign="top" align="middle" height="97">Shop 
            without<br>
            creating your account</td>
          </tr>
          <!-- Shop without creating your account Form -->
<form method="POST" name="frm" action="reg_code1.jsp" onSubmit="return validate();">
            <tr>
              <td align="middle" height="20">Name:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input size="21" name="T1"><p>Postal Address:<input size="21" name="T2"></p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User ID:-<input size="21" name="T3"></p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password::<input type="password" size="21" value name="T4"></p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile:<input size="21" name="T5"> </p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:<input size="21" name="T6"></p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Question :<input name="T7" size="20"></p>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Answer:<input name="T8" size="20"> </p>
              <ul>
                <li>I accept the User Agreement and Privacy Policy. </li>
                <li>I may receive communications from eBay and can change my 
                notification preferences in My Site. </li>
                <li>I'm at least 18 years old. </li>
              </ul>
              <p><label>&nbsp;</label></td>
            </tr>
            <tr>
              <td align="middle" height="34">
              <input style="MARGIN-TOP: 27px" type="image" src="image/enterlogin.gif" value="submit" border="0" width="104" height="34">
              </td>
            </tr>
          </form>
          <!-- Shop without creating your account Form Ends -->
          <tr>
            <td id="passlogin" vAlign="bottom" align="middle" height="45">
            <a href="reg.jsp">Register now </a></td>
          </tr>
          <tr>
            <td background="image/leftconerblogin.gif" height="21" width="4">&nbsp;</td>
            <td class="borbtlog">&nbsp;</td>
            <td class="logbotright">&nbsp;</td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    <!-- Footer -->
    <!-- footer starts -->
    <table class="footer" cellSpacing="0" cellPadding="0" width="779" align="center" border="0">
      <tr>
        <td>
        <table class="subtable" cellSpacing="0" cellPadding="0" width="100%" border="0">
          <tr>
            <td vAlign="center" align="middle" width="25%">
            <a href="http://shopping.indiatimes.com/media/misc/ishop/USB_terms.html" target="_blank">
            <img src="image/Free-Shipping.jpg" border="0" width="93" height="75"></a></td>
            <td vAlign="center" align="middle" width="25%">
            <a href="http://shopping.indiatimes.com/media/misc/ishop/USB_terms.html" target="_blank">
            <img src="image/15Day-Return.jpg" border="0" width="103" height="74"></a></td>
            <!--  <td width="25%" align="center" valign="middle"><a href="http://myrewards.indiatimes.com/articleshow/957963.cms" target="_blank"><img src="/media/images/ishop1/MyReward.jpg" border="0"></a></td>-->
            <td vAlign="center" align="middle" width="25%">&nbsp;</td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    <p>&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">&nbsp;</td>
  </tr>
</table>
<jsp:include page="footer.html"/>

</body>

</html>