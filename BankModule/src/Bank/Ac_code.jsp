<%@page import="java.util.Vector,java.io.*,java.util.*,java.sql.*"%>
<%@ page import="java.util.Date,java.text.DateFormat,java.lang.Thread"%>
<jsp:useBean id="db" class="dbdir.DbHead"/>
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<%
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


String name=request.getParameter("T1");
String ac=request.getParameter("T2");
String random=request.getParameter("random");
String mobile=request.getParameter("T4");
String mail=request.getParameter("T5");
String addr=request.getParameter("T6");
String rs=request.getParameter("T7");
String Em=request.getParameter("exp_month");
String Ey=request.getParameter("exp_year");
String APN=request.getParameter("APN");
String Credit_card_no="35"+random+ac;
String CVV_No="46"+ac+APN;
db.mkcon();
String snt="insert into customer values('"+name+"','"+ac+"','"+Credit_card_no+"','"+mobile+"','"+mail+"','"+addr+"','"+rs+"','"+Em+"','"+Ey+"','"+CVV_No+"')";
int i=db.insert(snt);
if(i>0)
{
String sachin="insert into bata values('"+ac+"','"+complete_date+"','"+full_comp_time+"','"+rs+"','"+rs+"'"+Em+"','"+Ey+"','"+CVV_No+"')";
System.out.println("Query for datatable===>"+sachin);
//int j=db.insert("insert into bata values('"+ac+"','"+complete_date+"','"+full_comp_time+"','"+rs+"','"+rs+"','"+Em+"','"+Ey+"','"+CVV_No+"')");
int j=db.insert(sachin);
%>
<script>
alert('Welcome to abc bank Your Credit card No is :<%=Credit_card_no%> and Account Panel Number is : <%=CVV_No%> ');
</script>
<jsp:include page="emp.jsp"/>
<%
}
else
{

%>
<script>
history.back(1)
alert('Sorry Try again....');
</script>

<%
}
%>
</body>

</html>