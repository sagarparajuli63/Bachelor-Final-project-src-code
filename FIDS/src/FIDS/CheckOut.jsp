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
System.out.println(cat);
session.setAttribute("Mycat",cat);

String pname=request.getParameter("pname");
session.setAttribute("Mypname",pname);
System.out.println(pname);

String deta=request.getParameter("deta");
session.setAttribute("Mydeta",deta);
System.out.println(deta);

String price=request.getParameter("price");
session.setAttribute("Myprice",price);
System.out.println(price);

String Vender=request.getParameter("Ven");
session.setAttribute("MyVender",Vender);
System.out.println(Vender);
%>
<form name="frm" method="POST" action="Process.jsp" onSubmit="return validate();">

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
                        <td class="pannelGridColumnClassCheckOut">
                        <font color="#FF0000">
                        <span onclick="read()" class="pageName"><b>My Shopping Cart 
                        </b>- </span>
                        </font><font color="#008080">
                        <span id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:itemCart" class="pageName">
                        1</span><span class="pageName"> Item(s) </span></font></td>
                        <td class="pannelGridColumnClassCheckOut1">
                        <font color="#FF0000">
                        <span class="totalAmounttext"><b>Total Item Price :</b></span></font><font color="#008080"><span id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:itemPrice" class="totalAmounttext">INR 
                        <%=price%></span></font></td>
                      </tr>
                    </table>
                    <table class="content" width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><font color="#FF0000"><b>Category :</b></font><font color="#008080"> <%=cat%></font></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;<font color="#FF0000"><b>Vendor :</b></font><font color="#008080"> <%=Vender%></font></td>
                      </tr>
                    </table>
                    <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="10"></td>
                      </tr>
                      <tr>
                        <td align="right">
                        &nbsp;</td>
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
                              <th class="shoppingtableth">
                              <font color="#FF0000">
                              <span id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:shoppingCartTable:productTitle" class="productTitleHeader">
                              Item Details</span></font></th>
                              <th class="shoppingtableth">
                              <font color="#FF0000">
                              <span id="shoppingCart:defaultShoppingCartBody:shoppingCartItemsComponent:shoppingCartTable:qty" class="qtyheader">
                              Qty</span></font></th>
                              <th class="shoppingtableth">
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
                            <td class="shoppingcarttd3">
                            <font color="#008080">
                            <%=deta%></font></td>
                            <td class="shoppingcarttd4">
                            <p align="left">
                            <font color="#008080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							1</font></td>
                            <td class="shoppingcarttd5"><font color="#008080">INR <%=price%></font></td>
                            <td class="shoppingcarttd6"><font color="#008080">INR&nbsp;&nbsp; <%=price%></font></td>
                          </tr>
                        </table>
                        </td>
                      </tr>
                      <tr>
                        <td class="TotalPrice_column" align="right">
                        <span class="totalAmountvalue">
                        </td>
                      </tr>
                      <tr>
                        <td class="TotalPrice_column" align="right">
                        <font color="#FF0000">
                        <span class="totalAmounttext">Total :</span></font><span class="totalAmountvalue"><font color="#FF0000">INR&nbsp</font> 
                        &nbsp;<font color="#008080"><%=price%></font></span></font></span></td>
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
                            <input id="shoppingCart:defaultShoppingCartBody:buttons:check" value="Proceed To Checkout" type="submit"></td>
                          </tr>
                        </table>
                        </td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                    </td>
                    <td width="4">&nbsp;</td>
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
                            <img border="0" src="image/15Day-Return.jpg" width="195" height="74"></td>
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
    <p><marquee><b><font color="#FF0000"><span class="formtext">Note: Delivery Charges, if applicable, would be 
    extra.</span></font></b></marquee></td>
  </tr>
  <tr>
    <td width="100%">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">&nbsp;</td>
  </tr>
</table>
</form>
<jsp:include page="footer.html"/>

</body>

</html>