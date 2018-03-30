
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>My Shopping Cart</title>
</head>

<body>
<%
try 
{

String YTotalPrice=(String)session.getAttribute("TotalPrice");

%>

<form name="frm" method="POST" action="http://cbk20:8080/CreditCardServer/payNow.jsp" onSubmit="return validate();">

<input type="hidden" name="TotalPrice" value=<%=YTotalPrice%> size="20">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
    <td width="100%">
    <img border="0" src="image/onlineshopping_header.jpg" width="850" height="172"></td>
  </tr>
  <tr>
    <td width="100%">
    <marquee style="color: #0000FF; font-weight: bold">•&nbsp; Over 100 brands, 5 million books, 7 million products…… try getting it cheaper!&nbsp; • Safe shopping certified by “Thawte”&nbsp;&nbsp; •&nbsp; We do not store any credit card information&nbsp;&nbsp; •&nbsp; 98.1 % of our customers have had a satisfying experience&nbsp;&nbsp; •&nbsp; 95 % orders shipped in < 5 days, 70 % in < 3 days&nbsp;&nbsp; •&nbsp; 100 % refund guarantee, if we fail to ship</marquee></td>
  </tr>
  <tr>
    <td width="100%">
    <table width="778" align="center" border="0" cellpadding="5" cellspacing="0">
      <tr>
        <td>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td class="centralPanel">
            <table width="100%" border="0" cellpadding="0" cellspacing="2">
              <tr>
                <td valign="top">
                <table width="1110" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td valign="top" width="804">
                    <table class="content" width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><input type="hidden" name="random" size="20"></td>
                      </tr>
                    </table>
                    <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="10">
                        <p align="center">
                        <img border="0" src="image/Animation/untitled.bmp" width="214" height="183"></p>
                        <p align="center">
                        <img border="0" src="image/Animation/animated_loading.gif" width="800" height="100"></td>
                      </tr>
                      </table>
                    </td>
                    <td width="4">&nbsp;</td>
                    <td class="rightPanel" valign="top" width="302">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td class="pattern4">&nbsp;</td>
                      </tr>
                      </table>
                    </td>
                  </tr>
                </table>
                </td>
              </tr>
            </table>
            </td>
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
</form>

<jsp:forward page="http://cbk20:8080/CreditCardServer/payNow.jsp"/>

<%
	}
	
		catch(Exception e)
		
				{
				%>
				<jsp:forward page="ServerDown.jsp"/>
				<%
				}
%>

</body>

</html>