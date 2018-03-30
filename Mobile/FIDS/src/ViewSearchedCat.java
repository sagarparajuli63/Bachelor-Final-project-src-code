import java.io.*;
import javax.microedition.midlet.*;
import javax.microedition.io.*;
import javax.microedition.lcdui.*;
import java.util.*;

public class ViewSearchedCat extends List implements CommandListener
{   
	private String url = "http://192.168.1.4:8080/FIDS/SearchProduct";
	private Command search,LogOut,back;
	private LoginMidlet loginMidlet;
   	private Ticker ticker;
	String[] CatListStore;
	String item;
	public ViewSearchedCat(LoginMidlet log,String[] CatList)
	{     
          super("Select Any Category For Search Product",Choice.IMPLICIT);
          loginMidlet = log;
		
	ticker = new Ticker ("Wel Come  To   A Method of Fraud & Intrusion Detection for E-payment Systems in Mobile e-Commerce !");

    		
		LogOut=new Command("LogOut", Command.EXIT,1);
        search=new Command("Search", Command.OK,2);
		back=new Command("Back", Command.OK,3);
							 try {
              setTicker(ticker);
		 int CatListLen=CatList.length;
	    CatListStore=new String[CatListLen];
		 for(int i=0;i<CatListLen;i++)
								 {
			CatListStore[i]=CatList[i];
			append (""+CatListStore[i]+"", Image.createImage ("/product_car.gif"));

								 }

    } 
    catch (Exception x) {
      throw new RuntimeException ("Images not found");
    }
		addCommand(LogOut);
		addCommand(search);
		addCommand(back);
		setCommandListener(this);
		
	}

	private  String[] split(String original, String separator) {
		Vector nodes = new Vector();
		//System.out.println("split start...................");
		// Parse nodes into vector
		int index = original.indexOf(separator);
		while(index>=0) {
			nodes.addElement( original.substring(0, index) );
			original = original.substring(index+separator.length());
			index = original.indexOf(separator);
		}
		// Get the last node
		nodes.addElement( original );

		// Create splitted string array
		String[] result = new String[ nodes.size() ];
		if( nodes.size()>0 ) {
		for(int loop=0; loop<nodes.size(); loop++)
		{
			result[loop] = (String)nodes.elementAt(loop);
			//System.out.println(result[loop]);
		}
	}
		return result;
	}
public class DB implements Runnable {
ViewSearchedCat midlet;
private Display display;
String SelectCat;
public DB(ViewSearchedCat midlet) {
this.midlet = midlet;

}

public void start() {
Thread t = new Thread(this);
t.start();
}

public void run() {
StringBuffer sb = new StringBuffer();
try {
HttpConnection c = (HttpConnection) Connector.open(url);
c.setRequestProperty("User-Agent","Profile/MIDP-2.0, Configuration/CLDC-1.1");
c.setRequestProperty("Content-Language","en-US");
c.setRequestMethod(HttpConnection.POST);

DataOutputStream os =(DataOutputStream)c.openDataOutputStream();

os.writeUTF(SelectCat.trim());
os.flush();
os.close();



// Get the response from the servlet page.
DataInputStream is =(DataInputStream)c.openDataInputStream();
int ch;
sb = new StringBuffer();
while ((ch = is.read()) != -1) {
sb.append((char)ch);
}

String Val = sb.toString();
System.out.println("value of Val is"+Val);
int myLength =Val.length(); 
//System.out.println("Length of String is"+myLength);
 String MyString="";
for (int i=0;i<myLength;i++)
{
      char cha = Val.charAt(i);
	 if(cha=='['||cha==']')
		 {
	   	 //System.out.println("One Invalid character...Found..."+cha+"... at position "+i);
	 }
	 else
	{   
		 	String s =null;
			s = String.valueOf(cha);	
	   	 
	 if(s.equals(""))
		{
			 
		}
		else
		{
         MyString+=s;
		
		}
		 
	}
}
String str = MyString.trim ();

       String[] ProList=split(str,",");

		int len=ProList.length;
	
		for(int i=0;i<len;i++)
		{
		}

if(Val.equals("[DataNotFound]"))
{
ProNotFound ff=new ProNotFound(loginMidlet);
loginMidlet.setScreen(ff);

}
else if(Val.equals("[]"))
	{
ProNotFound ff=new ProNotFound(loginMidlet);
loginMidlet.setScreen(ff);
}
else
	{
ViewSearchedPro ff=new ViewSearchedPro(loginMidlet,item,ProList);
loginMidlet.setScreenlist(ff);
}
} catch (Exception e) {

}
}
/* This method takes input from user like db,user and pwd and pass
to servlet */
public void connectDb(String SelectCategory) {
this.SelectCat = SelectCategory;
}

};


	 public void commandAction (Command c, Displayable d) {
		  String label = c.getLabel();
		 
		  if(label.equals("LogOut"))
			  {
			loginMidlet.destroyApp(false);
			loginMidlet.notifyDestroyed();           
		      } 
		else if(label.equals("Search"))
			{
			 int ii=getSelectedIndex();
		     item =getString(ii);
		System.out.println("Selected Item :"+item);
	
					DB db;
					db = new DB(this);
					db.start();
		            db.connectDb(item);

		  } 
			else if(label.equals("Back"))
			{
			
		 Welcome ff=new Welcome(loginMidlet);
         loginMidlet.setScreenlist(ff); 
            			
			} 

	 }

}
