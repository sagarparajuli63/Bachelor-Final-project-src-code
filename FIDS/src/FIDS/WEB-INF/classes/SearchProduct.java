import java.io.*;
import java.text.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import dbdir.MyDbCon;
public class SearchProduct extends HttpServlet {

int flag=0;
ResultSet rs=null;
String Msg=null,MyItem;

ArrayList<String> myArr = new ArrayList<String>();

public void init() {
}

public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {

DataInputStream in = new DataInputStream((InputStream)request.getInputStream());
MyItem = in.readUTF();
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

MyDbCon myDbCon =new MyDbCon();

try{
myDbCon.mkcon();
String Item="'"+MyItem+"'";
String qry="SELECT * FROM product where category="+Item+""; 
System.out.println("Search items...."+qry);
rs = myDbCon.fetch(qry); 

} catch (Exception e) { 
System.err.println(e);
//bstr += e.toString();
}

try{
while (rs.next()) 
{
flag=1;

	System.out.println("while loop flag...."+flag);

String ProName=rs.getString(3);
myArr.add(ProName);
	
} 
if(flag==0)
	{
	System.out.println("if loop flag...."+flag);

myArr.add("DataNotFound");
}


} catch (SQLException e) {
System.err.println(e);
System.exit(1);
}

}
}


