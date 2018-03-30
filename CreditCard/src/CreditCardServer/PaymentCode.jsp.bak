<%@ page import="java.io.*,java.sql.*"%>
<%@ page import="java.util.Date,java.text.*,java.lang.Thread,java.util.*"%>

<jsp:useBean id="db" class="dbdir.DbHead"/>
<jsp:useBean id="Appdb" class="dbdir.MyDbCon"/>
<jsp:useBean id="tp" class="dbdir.TTP"/>


<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<%
			double threshold=0.5;
			String cl=null;
           	Calendar rightNow = Calendar.getInstance();
		    int hour=rightNow.get(Calendar.HOUR_OF_DAY);
		    String Itime=null;
		    String Iamount=null;
		    String IIp=null;
		    int ipb1=0;
		    int ipbe=0;
			String Abl_Bal=null;
		    
			String DbDate=null;
			
		try
		{
int TotalAmt=0;
String Ac=null;
String pwd=(String)session.getAttribute("upwd");
String id=(String)session.getAttribute("user");
		System.out.println("Your id & Passkey2222222222==>"+pwd+""+id);
 String AcNo=null;
 String cardno=request.getParameter("cardno");
 String CVV=request.getParameter("CVV");
 String exp_month=request.getParameter("exp_month");
 String exp_year=request.getParameter("exp_year");
 
 String OrderNo=request.getParameter("OrderNo");
 System.out.println("OrderNoIs :"+OrderNo);
 
 String YourVender=request.getParameter("YourVender");
 System.out.println("YourVenderIs :"+YourVender);
 
 String YourDate=request.getParameter("YourDate");
 System.out.println("YourDate Is :"+YourDate);

 String YourTime=request.getParameter("YourTime");
 System.out.println("YourTime Is :"+YourTime);

 String YourIpAddress=request.getParameter("YourIpAddress");
 System.out.println("YourIpAddress Is :"+YourIpAddress);
 
 String Totalprice=request.getParameter("YourTotalPrice");
 System.out.println("Totalprice Is :"+Totalprice);
 int TotalP=Integer.parseInt(Totalprice);

			Appdb.mkcon();
			String testvaluse=null;
			ResultSet rest=Appdb.fetch("select * from ipcheck where IpAd='"+YourIpAddress+"'");
			if(rest.next())
			{
				testvaluse="Y";
			}
			else
			{
			testvaluse="N";

			}

 String PayCheck="select * from customer where cardno='"+cardno+"' and ExpiryMonth='"+exp_month+"' and ExpiryYear='"+exp_year+"'";
 db.mkcon();
 ResultSet rs=db.fetch(PayCheck);
 if(rs.next())
 {
 String CvvNo=rs.getString(10);
 String MyStrCVVNo=CvvNo.substring(CvvNo.length()-3);
 	if(MyStrCVVNo.equals(CVV))
 			{
 AcNo=rs.getString(2);
 System.out.println("Account No Is :"+AcNo);
 ResultSet rs1=db.fetch("select * from customer where acno='"+AcNo+"'");
 if(rs1.next())
 		{
 		String Bal=rs1.getString(7);
 		System.out.println("Your current Bal Is :"+Bal);
 		
 		int ibal=Integer.parseInt(Bal);
		int iamt=Integer.parseInt(Totalprice);
		
 			//System.out.println("ibal Is :"+ibal);

 			System.out.println("Item amount Is :"+iamt);


						if(ibal<iamt)
 				
 								{
 									System.out.println("Balance is not sufficient to carry out the Transaction !");
 										%>
 										<jsp:forward page="insufficient.jsp"/>
 										<%

 								}
 					
 						else
 								{
 	
										//System.out.println("You can Go 4 Transaction !");
										
										//String Abl_Bal=Integer.toString(ibal-iamt);
										
										//int i=db.insert("update customer set rs='"+Abl_Bal+"' where acno='"+AcNo+"'");
										
										System.out.println("Now Ur bal Is :"+Abl_Bal);
										Itime="Normal";
		    							Iamount="Normal";
										IIp="Normal";

										Appdb.mkcon();
										//tp.mkcon();
										//*************************************************************
										String snt1="select count(AccountNo) from transactiondetails where AccountNo='"+AcNo+"'";
										 ResultSet rs8=Appdb.fetch(snt1);
										 rs8.next();
										 String Tno=rs8.getString(1);
										 System.out.println("No of tran=====>"+Tno);
										 int T_no=Integer.parseInt(Tno);
										 cl="Normal";
										 System.out.println("**********not in FIDS*********");

										 if(T_no>9)
										 {
										 System.out.println("**********Now inside FIDS*********");

										 //*****************************ip check *********************************************
										 Appdb.mkcon();

										 ResultSet mtrs=Appdb.fetch("select count(AccountNo) from ipcheck where AccountNo='"+AcNo+"' and Tdates='"+YourDate+"'");
										 mtrs.next();
										 String IpBe=mtrs.getString(1);
										 
										 ipbe=Integer.parseInt(IpBe);
										 System.out.println("**********Now ipbehaviour new*********=======>"+IpBe);


										 int iBehave1=Appdb.dbinsert("insert into ipbehaviour values('"+AcNo+"','"+IpBe+"')");
										 Appdb.mkcon();
											String cbk="select * from ipbehaviour where AccountNo='"+AcNo+"'";
											
											System.out.println("**********Query for ipbehaviour ********=======>"+cbk);

											ResultSet res=Appdb.fetch(cbk);
											res.next();
											String ipb=res.getString(2);
											ipb1=Integer.parseInt(IpBe);
											System.out.println("**********Now ipbehaviour old*********=======>"+ipb1);
													if(testvaluse.equals("N"))
													{
													System.out.println("**********NNNNNNNNNNNNNNNNNNN********=======>");

													ipbe++;
													}
													else
													{
													System.out.println("**********YYYYYYYYYYYYYYYYYYYYY********=======>");

													}
										

											if(ipbe>ipb1)
											{
											System.out.println("ip intrusion");
											double D_ipbe=ipbe;
											double Dipb1=ipb1;
											double ipdif=D_ipbe-Dipb1;
											double ippoint=ipdif/D_ipbe;
											IIp="0."+((int)(ipdif/D_ipbe*1000));
											System.out.println("ip froud got===point is==>"+IIp);
												if(ippoint>threshold)
														{
															System.out.println("*********Froud**********");
															%>
															<jsp:forward page="fraud.jsp"/>
															<%

														}

											}
											else
											{
														ResultSet mtrs1=Appdb.fetch("select * from ipbehaviour");
										  				if(mtrs1.next())
										 				 {
										 				int up=Appdb.dbinsert("update ipbehaviour set IpBehave='"+IpBe+"' where AccountNo='"+AcNo+"'");
										  
										 				 }
										  				else
										  				{
										  				int iBehave=Appdb.dbinsert("insert into ipbehaviour values('"+AcNo+"','"+IpBe+"')");


										  				}
											}
										  

										 //*******************************End****************************************************

										 
										 
										 //****************Time Event**************************
										 Appdb.mkcon();
										 String snt2="select min(T_hour) from transactiondetails where AccountNo='"+AcNo+"'";
										 String snt3="select max(T_hour) from transactiondetails where AccountNo='"+AcNo+"'";
											ResultSet rs9=Appdb.fetch(snt2);
											Appdb.mkcon();
											ResultSet rs10=Appdb.fetch(snt3);
											rs9.next();
											rs10.next();
											int Tmin=rs9.getInt(1);
											int Tmax=rs10.getInt(1);
											System.out.println("max time===>"+Tmax+" and min time====>"+Tmin);
											if((hour<Tmin) || (hour>Tmax))
											{
											System.out.println("intrution in time event");
											double C_hour=hour;
											double DTmax=Tmax;
											double Tdif=C_hour-DTmax;
											double Tpoint=Tdif/C_hour;
											Itime= "0."+((int)(Tdif/DTmax*1000));

											
												if(Tpoint>threshold)
														{
															System.out.println("*********Froud************ >");
															%>
															<jsp:forward page="fraud.jsp"/>
															<%

														}


											
											}
								


										 
										 //************************************************************
												Appdb.mkcon();

										       String snt="select * from transactiondetails  where AccountNo='"+AcNo+"'";
										       ResultSet trs=Appdb.fetch(snt);
										       while(trs.next())
										       {
										       String am=trs.getString(7);
										       int amt=Integer.parseInt(am);
										       TotalAmt=TotalAmt+amt;
										       System.out.println("total amount is=>"+TotalAmt);
										       }
										int Avg_Amt=TotalAmt/T_no;
										TotalAmt=0;
										System.out.println("Avg_Amt amount is=>"+Avg_Amt);
										
										if(Avg_Amt<=20000)
										{
										cl="class-I";
										}
										if((Avg_Amt>20000) && (Avg_Amt<=50000))
										{
										cl="class-II";

										}
										if(Avg_Amt>50000)
										{
										cl="class-III";
										
										}
												if(TotalP>Avg_Amt)
												{
													
													double t_p =TotalP;
													double avg =Avg_Amt;
													System.out.println("intrution");
													double difA=t_p-avg;
													double point= difA/t_p;
													Iamount= "0."+((int)(difA/t_p*1000));
													System.out.println("point====************>"+Iamount);
														if(point>threshold)
														{
															System.out.println("*********Froud************ >");
															%>
															<jsp:forward page="fraud.jsp"/>
															<%

														}

													
										
												}
										}
										Appdb.mkcon();
                                        System.out.println("You can Go 4 Transaction !");
										
										Abl_Bal=Integer.toString(ibal-iamt);
										System.out.println("Now Ur bal Is :"+Abl_Bal);
										System.out.println("Your Class is=>"+cl);
										System.out.println("Your ip point is=>"+IIp);

										System.out.println("Your time point is=>"+Itime);

										int i=db.insert("update customer set rs='"+Abl_Bal+"' where acno='"+AcNo+"'");

										int t=Appdb.dbinsert("insert into transactiondetails values('"+AcNo+"','"+OrderNo+"','"+YourVender+"','"+YourDate+"','"+YourTime+"','"+YourIpAddress+"','"+Totalprice+"','"+cl+"','"+hour+"','"+Itime+"','"+Iamount+"','"+IIp+"')");
										
										//int ttp=tp.dbinsert("insert into transaction values('"+AcNo+"','"+OrderNo+"','"+YourVender+"','"+YourDate+"','"+YourTime+"','"+YourIpAddress+"','"+Totalprice+"','"+id+"','"+pwd+"')");
										//System.out.println("Value of T :"+t);
										
										
										
										if(i>0 && t>0)
										{								
							
										%>
										<script>
										alert("Money Has Been Transferred Successfully From Your Account !!");
										</script>
                                        <p align="center">
										<span style="background-color: #FFFF00; font-weight:700">
                                        <font size="5" color="#FF0000">Y</font></span><span style="background-color: #00FFFF; font-weight:700">your Balance Is :INR <%=Abl_Bal%></span> </p>
										<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
												<%
										}
										else
									{
										%>
												<script>
												alert("Money Transaction Has Been Failed From Your Account !!");
												</script>

												
                                       				<%									
													
													}

 								}
				

 		}
 		
 			
 	}
 			else
 					{
 					
 					System.out.println("Check CVV NO");
 						%>
										<script>
										alert("Please Check Your CVV NO !!");
										        </script>
                                       
										 <jsp:include page="http://192.168.1.4:8080/FIDS/orderSummary.jsp"/>

										<%

 					}
 }
 else
 {
 
 %> 
 <jsp:forward page="purchasefailed.jsp"/>
 
 <%
 }
 ResultSet rs4=Appdb.fetch("select * from ipcheck where AccountNo='"+AcNo+"' and IpAd='"+YourIpAddress+"' and Tdates='"+YourDate+"'"); 
 if(rs4.next())
 	{									
Ac=rs4.getString(1);
String ip=rs4.getString(2);	
DbDate=rs4.getString(4);	


if(Ac.equals(AcNo) && ip.equals(YourIpAddress))
													{
													System.out.println("if Loop");
																										
													String Mycounter=Integer.toString((Integer.parseInt(rs4.getString(3)))+1);

													System.out.println("Mycounter :"+Mycounter);
													
													int up=Appdb.dbinsert("update ipcheck set Ipcounter='"+Mycounter+"' where AccountNo='"+Ac+"' and IpAd='"+ip+"'and Tdates='"+YourDate+"'");
													//int in=Appdb.dbinsert("insert into ipcheck values('"+AcNo+"','"+YourIpAddress+"','1','"+YourDate+"')");

													}
													
															else
															
																		{
																		
													System.out.println("else Loop");
													int r=Appdb.dbinsert("insert into ipcheck values('"+AcNo+"','"+YourIpAddress+"','1','"+YourDate+"')");
											        //int iBehave=Appdb.dbinsert("insert into ipbehaviour values('"+AcNo+"','N')");

																		
																		}
																	
																	}
																	else
																			{
																			
																			System.out.println("Empty Result");
																			
																			int r=Appdb.dbinsert("insert into ipcheck values('"+AcNo+"','"+YourIpAddress+"','1','"+YourDate+"')");
										                                   // int iBehave=Appdb.dbinsert("insert into ipbehaviour values('"+AcNo+"','N1')");


																			}
																			
int count=0;																			
ResultSet rs5=Appdb.fetch("select * from ipcheck where AccountNo='"+Ac+"'"); 
 while(rs5.next())
 	{
 		count++;								
	}														
System.out.println("count of AC"+count);

if(count==5)
		{
		System.out.println("Equal to 5");
	
		}
					else
					
								{
								
							System.out.println("less then 5");
	
								
								}
														
 }
 	catch(Exception e)
 	{
 	System.out.println("Exception is :"+e);

 	%>
 		<jsp:forward page="ServerDown.jsp"/>
 		<%

 	}
%> </font></i></b></p>
<p align="center"><b><i><font color="#FF0000" size="4">Please Close This Window 
for security reason.....................
</body>

</html>