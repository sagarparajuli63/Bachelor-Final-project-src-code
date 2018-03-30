import javax.microedition.lcdui.*;
import java.io.*;
import java.lang.*;
import javax.microedition.io.*;
import java.util.Vector;

class Welcome extends List implements CommandListener {
  
  private String url = "http://192.168.1.4:8080/FIDS/SearchCat";
  private Display display;
  private LoginMidlet loginMidlet;
  private Ticker ticker;
  private Image img;
  //private Form screen;
  private Command LogOut,Help;
  String User;
  public Welcome(LoginMidlet log){
    super ("Select Any Option", Choice.IMPLICIT);
    loginMidlet = log;
    ticker = new Ticker ("Welcome To   A Method of Fraud & Intrusion Detection for E-payment Systems in Mobile e-Commerce ! ");
	LogOut = new Command("LogOut", Command.OK, 1);
	Help = new Command("Help", Command.OK, 2);

    try {
      setTicker(ticker);
	 
      append ("Find Category", Image.createImage ("/logo1.gif"));
             
    } 
    catch (java.io.IOException x) {
      throw new RuntimeException ("Images not found");
    }
	addCommand(LogOut);
	addCommand(Help);
	setCommandListener(this);
  }
private String readHelpText()
  {
    InputStream is = getClass().getResourceAsStream("help.txt");
    try 
    {
      StringBuffer sb = new StringBuffer();
      int chr, i = 0;
      // Read until the end of the stream      
      while ((chr = is.read()) != -1)
          sb.append((char) chr);

      return sb.toString();
    }
    catch (Exception e)
    {         
      System.out.println("Unable to create stream");
    }
    return null;
  }
  	private  String[] split(String original, String separator) {
		Vector nodes = new Vector();
		System.out.println("split start...................");
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
			System.out.println(result[loop]);
		}
	}
		return result;
	}

  public class DB implements Runnable {
Welcome midlet;
private Display display;
public DB(Welcome midlet) {
this.midlet = midlet;
}

public void start() {
Thread t = new Thread(this);
t.start();
}

public void run() {

try {
HttpConnection c = (HttpConnection) Connector.open(url);
c.setRequestProperty("User-Agent","Profile/MIDP-2.0, Configuration/CLDC-1.1");
c.setRequestProperty("Content-Language","en-US");
c.setRequestMethod(HttpConnection.POST);

// Get the response from the servlet page.
DataInputStream is =(DataInputStream)c.openDataInputStream();
int ch;
StringBuffer sb = new StringBuffer();
while ((ch = is.read()) != -1) {
sb.append((char)ch);
} 
String Val = sb.toString();
sb=null;
int myLength =Val.length(); 
 String MyString="";
for (int i=0;i<myLength;i++)
{
      char cha = Val.charAt(i);
	 if(cha=='['||cha==']')
		 {
	 }
	 else
	{   
		 	String s =null;
			s = String.valueOf(cha);
		 if(s.equals("null"))
		{
			 append ("No Category In DataBase", Image.createImage ("/bullet.jpg")); 
		}
		else
		{
         MyString+=s;
		 
		}
		 
	}
}
        String str = MyString.trim ();
		if(str.equals("DataNotFound"))
	{              try {
       
	 
      append ("No Category In DataBase", Image.createImage ("/bullet.jpg"));
      
	  
						} 
						catch (java.io.IOException x) {
      throw new RuntimeException ("Images not found");
    }
				
		}
		else
	{
        String[] words=split(str,",");
		int len=words.length;
		for(int i=0;i<len;i++)
		{
		//System.out.println("words are"+words[i]);		
		}
	  
	  System.out.println("ViewSearchedCat");		
	  ViewSearchedCat ff=new ViewSearchedCat(loginMidlet,words);
      loginMidlet.setScreenlist(ff); 
		
	}
	} catch (Exception e) {

}
}
};
  
  
  public void commandAction (Command c, Displayable d) {
		  String label = c.getLabel();
		 
		  if(label.equals("LogOut"))
			  {
			loginMidlet.destroyApp(false);
			loginMidlet.notifyDestroyed();
            
			System.out.println(label);

		      } 
		else if(label.equals("Help"))
			{
			String str;
      // Access the resource and read its contents
      if ((str = readHelpText()) != null)
      {
        // Create an Alert to display the help text        
					DateFieldDemo ff=new DateFieldDemo(loginMidlet,str,User);
					loginMidlet.setScreen(ff); 
			 
      }
		System.out.println(label);
            			
			} 
	if (c == List.SELECT_COMMAND) {

          int ii=getSelectedIndex();
		  String item =getString(ii);
		  

	  if(item.equals("Find Category"))

				{
					DB db;
					db = new DB(this);
					db.start();
					 
					System.out.println("Find Category");
				}
			
    }
  }
}

