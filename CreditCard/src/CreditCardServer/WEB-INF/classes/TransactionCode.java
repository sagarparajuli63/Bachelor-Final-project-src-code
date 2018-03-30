import java.io.*;
import java.text.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import dbdir.MyDbCon;
//import dbdir.TTP;
import dbdir.DbHead;
public class TransactionCode extends HttpServlet {

ResultSet rs=null;
String Msg=null,SelectCreditCardNo,SelectCVVNo,SelectEM,SelectEY,SelectPrice,SelectVender;
			
			int flag=0;
			double threshold=0.5;
			String YourIpAddress="'Mobile'",OrderNo="'OrderNo'";
			Calendar rightNow = Calendar.getInstance();
		    int hour=rightNow.get(Calendar.HOUR_OF_DAY);
			String IIp=null;
			String cl=null;
           	String Itime=null;
		    String Iamount=null;
		    int ipb1=0;
		    int ipbe=0;
		    int TotalAmt=0;
			String Ac=null;
			String AcNo=null;
			String DbDate=null;
//			ArrayList<String> myArr = new ArrayList<String>();
            ArrayList myArr = new ArrayList();
            boolean b1=true;
			boolean b2=true;
public void init() {
}

public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {

DataInputStream in = new DataInputStream((InputStream)request.getInputStream());
SelectCreditCardNo = in.readUTF();
SelectCVVNo = in.readUTF();
SelectEM = in.readUTF();
SelectEY = in.readUTF();
SelectPrice = in.readUTF();
SelectVender = in.readUTF();

String message = null;

try {

connect();

message =""+myArr+"";
} 
catch (Throwable t)
	{
message += " - unsuccessful - " + t.toString();
}
response.setContentType("text/plain");
response.setContentLength(message.length());
PrintWriter out = response.getWriter();
out.println(message);
in.close();
out.close();
out.flush();
myArr.clear();
}

public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {

doPost(request,response);
}

public void connect() throws Exception {

MyDbCon Appdb =new MyDbCon();
//TTP tp =new TTP();
DbHead db =new DbHead();

try{
Appdb.mkcon();
String cardno="'"+SelectCreditCardNo+"'";
String CVV=""+SelectCVVNo+"";
String exp_month=""+SelectEM+"";
String exp_year=""+SelectEY+"";
String Totalprice=""+SelectPrice+"";
int TotalP=Integer.parseInt(SelectPrice);
String YourVender="'"+SelectVender+"'";


								java.util.Date date = new java.util.Date();

								String YourDate1=Appdb.MyDate();
								
								System.out.println("Today_Date is : "+YourDate1);

								String YourDate="'"+YourDate1+"'";

								System.out.println("Today CVV: "+CVV);

								
									
								String H=Appdb.NoOfHour();
								
								System.out.println("H is : "+H);

								
								
								String M=Appdb.NoOfMin();
								
								System.out.println("M is : "+M);

								String Today_Time=H+":"+M;

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
			String YourTime1=Today_Time+time1;
			
			String YourTime="'"+YourTime1+"'";
										
			System.out.println("Today_Time is : "+YourTime);

			Random rand = new Random();
            int num = rand.nextInt(1000000);
			OrderNo=Integer.toString(num);

/**************************************************************************************************************************************/
 String PayCheck="select * from customer where cardno="+cardno+" and ExpiryMonth="+exp_month+" and ExpiryYear="+exp_year+"";
 db.mkcon();
 ResultSet rs=db.fetch(PayCheck);
 if(rs.next())
 {
 String CvvNo=rs.getString(10);

 String MyStrCVVNo=CvvNo.substring(CvvNo.length()-3);
 System.out.println("Today CVV frm DB: "+MyStrCVVNo);
 	if(MyStrCVVNo.equals(CVV))
 			{
 AcNo=rs.getString(2);
 System.out.println("Account No Is :"+AcNo);
 ResultSet rs1=db.fetch("select * from customer where acno="+AcNo+"");
 if(rs1.next())
 		{
 		String Bal=rs1.getString(7);
 		System.out.println("Bal Is :"+Bal);
 		
 		int ibal=Integer.parseInt(Bal);
		int iamt=Integer.parseInt(Totalprice);
		
 			System.out.println("ibal Is :"+ibal);

 			System.out.println("iamt Is :"+iamt);


						if(ibal<iamt)
 				
 								{
 myArr.add("Balance_is_not_sufficient");
 flag=1;					
 								}
 					
 						else
 								{
 	
										
										Itime="'Normal'";
		    							Iamount="'Normal'";
										
										Appdb.mkcon();
										//tp.mkcon();
										//*************************************************************
										String snt1="select count(AccountNo) from transactiondetails where AccountNo="+AcNo+"";
										 ResultSet rs8=Appdb.fetch(snt1);
										 rs8.next();
										 String Tno=rs8.getString(1);
										 System.out.println("No of tran=====>"+Tno);
										 int T_no=Integer.parseInt(Tno);
										 cl="'Normal'";
										 System.out.println("**********not in FIDS*********");

										 if(T_no>9)
										 {
										 System.out.println("**********Now inside FIDS*********");
							 
						
										 //****************Time Event**************************
										 Appdb.mkcon();
										 String snt2="select min(T_hour) from transactiondetails where AccountNo="+AcNo+"";
										 String snt3="select max(T_hour) from transactiondetails where AccountNo="+AcNo+"";
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
													myArr.add("TimeFroud");

													flag=2;

                                                     b1=false ;
														}


											
											}
								
									

										 
										 //************************************************************
												Appdb.mkcon();

										       String snt="select * from transactiondetails  where AccountNo="+AcNo+"";
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
										cl="'class-I'";
										}
										if((Avg_Amt>20000) && (Avg_Amt<=50000))
										{
										cl="'class-II'";

										}
										if(Avg_Amt>50000)
										{
										cl="'class-III'";
										
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
												myArr.add("AmountFroud");
															
													flag=3;
													b2=false;
													System.out.println("Flag 3333");
														}

													
										
												}
										 
										}
										
									if(b1 && b2)
                                  {
										System.out.println("You can Go 4 Transaction !");
										
										String Abl_Bal=Integer.toString(ibal-iamt);
										
										int i=db.insert("update customer set rs='"+Abl_Bal+"' where acno='"+AcNo+"'");
										
										System.out.println("Now Ur bal Is :"+Abl_Bal);
										Appdb.mkcon();

										System.out.println("Your Class is=>"+cl);
										
										System.out.println("Your time point is=>"+Itime);

										System.out.println("Your time =>"+YourTime);

										String UpdateTran="insert into transactiondetails values("+AcNo+","+OrderNo+","+YourVender+","+YourDate+","+YourTime+","+YourIpAddress+","+Totalprice+","+cl+","+hour+","+Itime+","+Iamount+","+IIp+")";
										
										System.out.println("Your SQL Query :"+UpdateTran);

										int t=Appdb.dbinsert(UpdateTran);
										
										
										if(i>0 && t>0)
										{								
							
										
										
						myArr.add("Money_Has_Been_Transferred");
										
						flag=4;
										}
										else
									{
										
						myArr.add("Money_Transaction_Has_ Been_Failed");
																			
						flag=5;						
									}
								

 								  }
						}

 		}
 		
 			
 	}
 			else
 					{
 					
 					
										
										myArr.add("Please_Check_Your_CVV_NO");
										       
                                       flag=6;
										

									

 					}
 }
		else
						{
												myArr.add("Wrong_Information");

												flag=7;

		
		}
		
		System.out.println("Flag value :"+flag);

		if(flag==0)
							{
		System.out.println("Flag 0000");
		}

		else if(flag==1)
							{
		System.out.println("Flag 1111");
		}
		else if(flag==2)
							{
		System.out.println("Flag 2222");
		}
		else if(flag==3)
							{
		System.out.println("Flag 3333");
		
		}
		else if(flag==4)
							{
		System.out.println("Flag 4444");
		}
		else if(flag==5)
							{
		System.out.println("Flag 5555");
		}
		else if(flag==6)
							{
		System.out.println("Flag 6666");
		}
		else if(flag==7)
							{
		System.out.println("Flag 7777");
		}

} catch (Exception e) { 
System.err.println(e);
}


}
}


