package dbdir;
import java.sql.*;
import java.text.*;
import java.util.Date;
import java.util.*;
public class MyDbCon
{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	int i=0;
	
	public MyDbCon()
	{
		try
		{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		}
		catch(Exception e)
		{
			System.out.println("error here    :"+e);
		}
	}
	public void mkcon()
	{
		try
		{
		 con=DriverManager.getConnection("jdbc:mysql://192.168.1.4:3306/vendor?user=root&password=master");
		 st=con.createStatement();
		 System.out.println(con);
	    }

		catch(Exception e)
		{
		System.out.println(e);
		}
	 }
	public int dbinsert(String str)
	{
		try
		{
		i=st.executeUpdate(str);
		}
		catch(Exception e)
		{
		System.out.println(e);
		}
	return(i);
	}
	public ResultSet fetch(String str)
	{
		try
		{
		rs=st.executeQuery(str);
		}
		catch(Exception e)
		{
		System.out.println(e);
		}
		return(rs);
	}
	/*-------java.util.*; package for time and date */
	public String MyDate()
	{ 
		String date=null,mmm=null,ddd=null;
		try
		{
		Calendar rightNow = Calendar.getInstance();
		int yy=rightNow.get(Calendar.YEAR);
		int mm=1+rightNow.get(Calendar.MONTH);
		int dd=rightNow.get(Calendar.DAY_OF_MONTH);
		
		if(dd<=9)
	      {
		   ddd="0"+dd;
          }
		  else
			{
			  ddd=Integer.toString(dd);
			}
          if(mm<=9)
	      {
		  mmm="0"+mm;
          }
		  else
			{
			  mmm=Integer.toString(mm);

			}
		date=yy+"/"+mmm+"/"+ddd;
		}
		catch(Exception e)
		{
		System.out.println(e);
		}
		return(date);
	}
	public String NoOfHour()
	{ 
		String date=null;
		int MyHour=0;
		String FMyHour=null;
		try
		{
		Calendar rightNow = Calendar.getInstance();
		int yy=rightNow.get(Calendar.YEAR);
		int mm=1+rightNow.get(Calendar.MONTH);
		int dd=rightNow.get(Calendar.DAY_OF_MONTH);
	

		date=yy+"/"+mm+"/"+dd;
        MyHour=rightNow.get(Calendar.HOUR_OF_DAY);
			if(MyHour<=9)
	      {
		   FMyHour="0"+MyHour;
          }
		  else
			{
			  FMyHour=Integer.toString(MyHour);
			}
          

		}
		catch(Exception e)
		{
		System.out.println(e);
		}
		return(FMyHour);
	}
	public String NoOfMin()
	{ 
		String date=null,FMyMin=null;
		int MyMin=0;
		try
		{
		Calendar rightNow = Calendar.getInstance();
		int yy=rightNow.get(Calendar.YEAR);
		int mm=1+rightNow.get(Calendar.MONTH);
		int dd=rightNow.get(Calendar.DAY_OF_MONTH);
		date=yy+"/"+mm+"/"+dd;
        MyMin=rightNow.get(Calendar.MINUTE);
			if(MyMin<=9)
	      {
		   FMyMin="0"+MyMin;
          }
		  else
			{
			  FMyMin=Integer.toString(MyMin);
			}
		}
		catch(Exception e)
		{
		System.out.println(e);
		}
		return(FMyMin);
	}
	/*---------------------end------------------------*/
}	 