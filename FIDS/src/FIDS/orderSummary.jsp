
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>My Shopping Cart</title>
<script language="javascript">
function OrderNo()
{
var randomnumber=Math.floor(Math.random()*1000000);
document.frm.random.value=randomnumber;
}


</script>

</head>

<body onLoad="return OrderNo()">
<jsp:include page="header.htm"/>

<%
try 
{

String cat=(String)session.getAttribute("Mycat");
String pname=(String)session.getAttribute("Mypname");
String deta=(String)session.getAttribute("Mydeta");
String price=(String)session.getAttribute("Myprice");
String Vender=(String)session.getAttribute("MyVender");

String pwd=(String)session.getAttribute("pass");
String id=(String)session.getAttribute("userids");
String ip=(String)session.getAttribute("IP");
System.out.println("Customer IP address>>>>"+ip);
		System.out.println("Your id & Passkey2222222222==>"+pwd+""+id);
%>
<form name="frm" method="POST" action="http://192.168.1.99:8080/CreditCardServer/payNow.jsp" onSubmit="return validate();">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
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
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td valign="top">
                    <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
                      <tr class="shopheader">
                        <td class="pannelGridColumnClassCheckOut" colspan="2">
                        <p align="center"><b><font color="#0000FF" size="4">
                        <span class="ordersummary">Order Summary</span></font></b></td>
                      </tr>
                      <tr class="shopheader">
                        <td class="pannelGridColumnClassCheckOut">
                        <span onclick="read()" class="pageName"><b>
						<font color="#FF0000">My Shopping Cart 
                        -</font></b> </span>
                        <font color="#008080">
                        <span id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:itemCart" class="pageName">
                        1</span><span class="pageName"> Item(s) </span></font></td>
                        <td class="pannelGridColumnClassCheckOut1">
                        <b><font color="#FF0000">
                        <span class="totalAmounttext">Total Item Price :</span></font></b><font color="#008080"><span id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:itemPrice" class="totalAmounttext">INR 
                        <%=price%></span></font></td>
                      </tr>
                    </table>
                    <table class="content" width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><b><font color="#FF0000">Category :</font></b><font color="#008080"> <%=cat%></font></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><input type="hidden" name="random" size="20"><input type="hidden" name="uid" value="<%=id%>" size="20"><input type="hidden" name="pass" value="<%=pwd%>" size="20"><input type="hidden" name="IP" value="<%=ip%>" size="20"></td>
                      </tr>
                    </table>
                    <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="10"></td>
                      </tr>
                      <tr>
                        <td align="right">
                        <p align="left"><font color="#FF0000">Vender :</font><font color="#008080"> <%=Vender%></font></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                    <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td align="center">
                        <table id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:shoppingCartTable" class="shoppingtable" width="100%" border="0" cellpadding="0" cellspacing="0">
                          <thead>
                            <tr>
                              <th class="shoppingtableth" width="169">
                              <font color="#FF0000">
                              <span id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:shoppingCartTable:productTitle" class="productTitleHeader">
                              Item Details</span></font></th>
                              <th class="shoppingtableth">
                              <font color="#FF0000">
                              <span id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:shoppingCartTable:qty" class="qtyheader">
                              Qty</span></font></th>
                              <th class="shoppingtableth" width="134">
                              <font color="#FF0000">
                              <span id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:shoppingCartTable:unitPrice" class="unitPriceheader">
                              Item Price</span></font></th>
                              <th class="shoppingtableth">
                              <font color="#FF0000">
                              <span id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:shoppingCartTable:totalItemPrice" class="totalitempriceheader">
                              Price</span></font></th>
                            </tr>
                          </thead>
                          <tr class="shoppingcarttr1">
                            <td class="shoppingcarttd3" width="169">
                            <font color="#008080">
                            <%=deta%></font></td>
                            <td class="shoppingcarttd4">
                            <font color="#008080">1 </font>
							</td>
                            <td class="shoppingcarttd5" width="134">
							<font color="#008080">INR <%=price%></font></td>
                            <td class="shoppingcarttd6"><font color="#008080">INR <%=price%></font></td>
                          </tr>
                        </table>
                        </td>
                      </tr>
                      <tr>
                        <td class="TotalPrice_column" align="right">
                        <font color="#FF0000">
                        <span class="totalAmounttext">Total :</span></font><span class="totalAmountvalue"><font color="#008080">INR <%=price%></font></span><input type="hidden" name="TotalPrice" value=<%=price%>><input type="hidden" name="Vender" value=<%=Vender%>></td>
                      </tr>
                    </table>
                    <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="right">
                        <table border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td class="cartbuttonmy" align="right">&nbsp;</td>
                            <td width="10">&nbsp;</td>
                            <td class="cartbuttonmy">
                            <input id="shoppingCart:defaultShoppingCartBody:buttons:check" value="Pay Now" type="submit"></td>
                          </tr>
                        </table>
                        </td>
                      </tr>
                      <tr>
                        <td><marquee><b><font color="#FF0000"><span class="formtext">Note: Delivery Charges, if applicable, would be 
    extra.</span></font></b></marquee><p>&nbsp;</td>
                      </tr>
                    </table>
                    </td>
                    <td width="15">&nbsp;</td>
                    <td class="rightPanel" valign="top" width="200">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td class="pattern4">&nbsp;</td>
                      </tr>
                      <tr>
                        <td>
                        <table width="101">
                          <tr>
                            <td width="95">
                            <p align="center">
                            <img border="0" src="image/Free-Shipping.jpg" width="196" height="75"></td>
                          </tr>
                        </table>
                        </td>
                      </tr>
                      <tr>
                        <td>
                        <table width="126">
                          <tr>
                            <td width="120">
                            <p align="center">
                            <img border="0" src="image/15Day-Return.jpg" width="195" height="74"></p>
                            <p>
                            <img border="0" src="image/quick_shopping_cart_header.jpg" width="296" height="181"></td>
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
<%
	}
		catch(Exception e)
		
				{
				%>
				<jsp:forward page="ServerDown.jsp"/>
				<%
				}
%>
<jsp:include page="footer.html"/>

</body>

</html>