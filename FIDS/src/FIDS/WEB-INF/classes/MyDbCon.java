package dbdir;
import java.sql.*;
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
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vendor?user=root&password=master");
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
	
}	 