import java.io.*;
import java.text.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import dbdir.MyDbCon;
public class GetConnection extends HttpServlet {

int flag=0;
ResultSet rs=null;
String Msg=null;
String userid=null;
String password=null;
ArrayList<String> myArr = new ArrayList<String>();

public void init() {
}

public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {

DataInputStream in = new DataInputStream((InputStream)request.getInputStream());
 userid = in.readUTF();
 password = in.readUTF();
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
System.out.println("DataBase is connected ! !");
System.out.println("userid...."+userid);
System.out.println("password...."+password);
String abc="'"+userid+"'";
String xyz="'"+password+"'";
System.out.println("abc...."+abc);
String qry="SELECT * FROM users where password="+xyz+" AND user="+abc; 
System.out.println("sdaddaa...."+qry);
rs = myDbCon.fetch(qry); 
System.out.println("rsrsrs...."+rs);

} catch (Exception e) { 
System.err.println(e);
//bstr += e.toString();
}

try{
if (rs.next()) 
{
myArr.add("Validation Correct");
} 
else
{
myArr.add("Validation Wrong");
}

} catch (SQLException e) {
System.err.println(e);
System.exit(1);
}

}
}


