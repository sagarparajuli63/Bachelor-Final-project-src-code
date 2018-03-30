<%@page import="java.util.Vector,java.io.*,java.util.*,java.sql.*,java.net.*"%>
<%@ page import="java.util.Date,java.text.DateFormat,java.lang.Thread"%>
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Payment Option</title>
</head>

<body>
<%

InetAddress inetAddress = InetAddress.getLocalHost();
                
String HostAddress= inetAddress.getHostAddress();
System.out.println("ip of system==local system="+HostAddress);

int date1=0,month1=0,year1=0,Inh=0,Inm=0,intime=0;
           Calendar rightNow = Calendar.getInstance();
           
           
            Date date = new Date();
    	    System.out.println(date);
    	   
    	    String cd=date.toString(); 
    	    String s=cd.substring(4,16);
    	  
    	    System.out.println("now timw"+s);
    	    // for date 
    	     date1=rightNow.get(Calendar.DATE);
            System.out.println("date="+date1);
		    month1=rightNow.get(Calendar.MONTH)+1;
		    year1=rightNow.get(Calendar.YEAR);
		    
		   String cdate1=Integer.toString(date1);
		   String month2=Integer.toString(month1);

	      if(date1<=9)
	      {
		   cdate1="0"+date1;
          }
          if(month1<=9)
	      {
		  month2="0"+month1;
          }

       

		   
		    String complete_date=""+month2+"/"+cdate1+"/"+year1+"";
		     System.out.println("now complete_date************************************"+complete_date);

    	    
    	    String myString = DateFormat.getTimeInstance(DateFormat.SHORT, Locale.ENGLISH).format(date);
    	    String time=myString.substring(0,5);
    	    		    System.out.println("time"+time+"vin");
				time=time.trim();
				System.out.println("time"+time+"vin");
            String time1=myString.substring(5,7);
            
            if(time1.equals(" P"))
			 time1="PM";
		    else if(time1.equals(" A"))
			time1="AM";
		    else 
		     {}
		    System.out.println("time"+time+"asd");
            System.out.println("time"+time1+"abc");
		    String full_comp_time=time+time1;
            System.out.println("full time*****************************"+full_comp_time);
            
String ONo=request.getParameter("random");
String TotalPrice=request.getParameter("TotalPrice");
session.setAttribute("MyTotalPrice",TotalPrice);
%>              

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
  <tr>
    <td width="33%">
    <table cellSpacing="0" cellPadding="0" width="760" border="0">
      <tr>
        <td align="middle" bgColor="#85aaff">
    <img border="0" src="image/onlineshopping_header.jpg" width="850" height="172"></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td width="100%">&nbsp;</td>
  </tr>
  <tr>
    <td width="100%">
    <table cellSpacing="0" cellPadding="0" width="760" border="0">
      <tr>
        <td align="middle" bgColor="#85aaff"><font face="arial" color="#ffffff">
        <b>Payment Option - Credit Card Details Page </b></font></td>
      </tr>
    </table>
    <table cellSpacing="0" cellPadding="2" width="761" bgColor="red" border="0">
      <tr>
        <td align="middle">
        <table cellSpacing="0" cellPadding="0" width="760" bgColor="white" border="0">
          <tr>
            <td><font face="arial" size="2"><b>&nbsp;Order Details:</b></font></td>
            <td>&nbsp;</td>
            <td vAlign="top" width="450" rowSpan="5">
            <font face="arial" size="2"><b>Instructions :</b></font>
            <li><font face="arial" size="2">Put your Master / Visa Card No. in 
            the boxes given below. </font></li>
            <li><font face="arial" size="2">Enter the CVV number (CVV number 
            means the last 3 digits of the Account Panel Number given at the 
            back of your credit card). </font></li>
            <li><font face="arial" size="2">Select the Expiry date. </font></li>
            <li><font face="arial" size="2">Click on Pay button to proceed 
            further. </font></li>
            <li><font face="arial" size="2">Please do not use Debit Card Number.
            </font></li>
            </td>
          </tr>
          <tr>
            <td align="right" width="100">
            <font face="arial" color="#747474" size="2"><b>Order No. :</b></font>&nbsp;&nbsp;</td>
            <td><font face="arial" size="2"><%=ONo%></font></td>
          </tr>
          <tr>
            <td align="right" width="100">
            <font face="arial" color="#747474" size="2"><b>Amount :</b></font>&nbsp;&nbsp;</td>
            <td><font face="arial" size="2">Rs. <%=TotalPrice%></font></td>
          </tr>
          <tr>
            <td width="100">&nbsp;</td>
            <td>&nbsp; </td>
          </tr>
        </table>
        <table cellSpacing="0" cellPadding="0" width="760" bgColor="white" border="0">
          <tr>
            <td width="200">
            <img border="0" src="image/107084.jpg" width="142" height="188"></td>
            <td align="middle">
              <table cellSpacing="0" cellPadding="0" width="400" bgColor="white" border="0">
                <tr>
                  <td align="middle" colSpan="3">&nbsp;</td>
                </tr>
                <tr>
                  <td align="middle">
                  <table cellSpacing="0" width="10" align="center" border="0">
                    <tr>
                      <td>&nbsp;<!-- <script src="https://siteseal.thawte.com/cgi/server/thawte_seal_generator.exe"></script> --><img border="0" src="image/online%20shopping.jpg" width="84" height="90"></td>
                    </tr>
                    <tr>
                      <td align="middle" height="0">
                      <span style="font-size: 8px; color: #ad0034; font-family: arial">
                      ABOUT SSL CERTIFICATES</span> </td>
                    </tr>
                  </table>
                  </td>
                  <td align="middle">
                  <img src="image/mastercard.gif" width="86" height="45"></td>
                  <td align="middle">
                  <img src="image/visa.gif" width="86" height="45"></td>
                  <td align="middle">&nbsp;</td>
                </tr>
              </table><form id="form1" style="MARGIN: 0px" name="form1" action="PaymentCode.jsp" method="POST">
              <table cellSpacing="0" cellPadding="0" width="400" bgColor="white" border="0">
                <tr>
                  <td colSpan="2">&nbsp;</td>
                </tr>
                <tr>

                  <td align="right"><font face="arial" color="#747474" size="2">
                  <b>CREDIT CARD NUMBER :</b></font></td>
                  <td>&nbsp;&nbsp;<input maxLength="16" name="cardno" size="20"></td>
                </tr>
                <tr>
                  <td align="right"><font face="arial" color="#747474" size="2">
                  <b>Three Digit CVV Number :</b></font></td>
                  <td>&nbsp;&nbsp;<input type="password" maxLength="3" size="5" value name="CVV">&nbsp;</td>
                </tr>
                <tr>
                  <td colSpan="2">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right"><font face="arial" color="#747474" size="2">
                  <b>EXPIRY DATE :</b> </font></td>
                  <td>&nbsp;&nbsp;<select size="1" name="exp_month">
                  <option value="0" selected>Month</option>
                  <option value="01">JAN</option>
                  <option value="02">FEB</option>
                  <option value="03">MAR</option>
                  <option value="04">APR</option>
                  <option value="05">MAY</option>
                  <option value="06">JUN</option>
                  <option value="07">JUL</option>
                  <option value="08">AUG</option>
                  <option value="09">SEP</option>
                  <option value="10">OCT</option>
                  <option value="11">NOV</option>
                  <option value="12">DEC</option>
                  </select> &nbsp;&nbsp; <select size="1" name="exp_year">
                  <option value="0" selected>Year</option>
                  <option value="2008">2008</option>
                  <option value="2009">2009</option>
                  <option value="2010">2010</option>
                  <option value="2011">2011</option>
                  <option value="2012">2012</option>
                  <option value="2013">2013</option>
                  <option value="2014">2014</option>
                  <option value="2015">2015</option>
                  <option value="2016">2016</option>
                  <option value="2017">2017</option>
                  <option value="2018">2018</option>
                  <option value="2019">2019</option>
                  <option value="2020">2020</option>
                  </select></td>
                </tr>
                <tr>
                  <td colSpan="2">&nbsp;</td>
                </tr>
            
                <tr>
                  <td align="middle" colSpan="2">
                  <input type="submit" value="Pay" name="Pay"></td>
                </tr>
                <tr>
                  <td colSpan="2">&nbsp;</td>
                </tr>
              </table>
               </form>
            </td>
            <td align="middle" width="200">
            CVV number means the last 3 digits of the Account Panel Number given 
            at the back of your credit card (as shown below) : <br>
            <img src="image/cvvcardback.gif" border="0" width="122" height="102"></td>
          </tr>
          <tr>
            <td align="middle" width="98%" bgColor="#ffffff" colSpan="3">
            <font face="Verdana" size="1" color="#70727c">
            <p class="MsoNormal" style="text-align: justify">
            <span style="font-size: 7pt; color: #0000FF; font-family: Verdana; font-weight: 700">
            The misuse of a Credit Card number is a criminal offence under 
            Indian 'The Information Technology Act, 2000'. We will aggressively 
            pursue and prosecute all transactions that attempt misuse of a 
            Credit Card number. As part of our strict security checks we track 
            every transaction for its genuinety.For 'Fraud Protection', it is 
            recorded that the IP Address of the current transaction is : </span>
            </font>
            <span style="font-size: 7pt; font-family: Verdana; font-weight: 700">
            <font face="Verdana" size="1" color="#FF0000">
            <%=HostAddress%></font></span><span style="font-size: 7pt; color: #0000FF; font-family: Verdana; font-weight: 700"><font face="Verdana" size="1" color="#70727c">
            </font>
            <font face="Verdana" size="1">
            and Date &amp; Time is :</font><font face="Verdana" size="1" color="#70727c">
            </font> </span>
            <span style="font-size: 7pt; font-family: Verdana; font-weight: 700">
            <font face="Verdana" size="1" color="#FF0000">
            <%=complete_date%>-<%=full_comp_time%>
            </font> </span>
            </td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</body>

</html>