import java.io.*;
import javax.microedition.midlet.*;
import javax.microedition.io.*;
import javax.microedition.lcdui.*;
import javax.microedition.lcdui.Form;
import java.util.*;

public class CreaditCardInfo extends Form implements CommandListener
{   
	private String url = "http://192.168.1.99:8080/CreditCardServer/TransactionCode";
	private DateField date =new DateField("       *  CREDIT CARD EXPIRY DATE  :     ",DateField.DATE);
	private Command Submit,Back,OrderNow,Instructions,SecurityAgreement ;
	private LoginMidlet loginMidlet;
	private Ticker ticker;
	private Display display;
	public Form form;
	private Image img,img1,img2,img3;
	private TextField CREDIT_CARD_NUMBER,Three_Digit_CVV_Number,Expiry_Month,Expiry_Year;
	String[] ProDetailsStore;
	String Catstore,Prostore;
	public CreaditCardInfo(LoginMidlet log,String cat,String pro,String[] ProDetails)
			{     
          super("Payment Option - Credit Card Details Page");

		  loginMidlet = log;

		
		  ticker = new Ticker ("Welcome To   A Method of Fraud & Intrusion Detection for E-payment Systems in Mobile e-Commerce !  ");

        
		
		try{
			img = Image.createImage("/cvvcardback.gif");
			img1 = Image.createImage("/cvvcard.GIF");
			img2 = Image.createImage("/warning.gif");
			img3 = Image.createImage("/info2.jpg");
		 int ProDetailsLen=ProDetails.length;
		 ProDetailsStore=new String[ProDetailsLen];
		 for(int i=0;i<ProDetailsLen;i++)
								 {
			ProDetailsStore[i]=ProDetails[i];
								 }
		Catstore=cat;
		Prostore=pro;
		Calendar cal = Calendar.getInstance();
        date.setDate(cal.getTime());
		 CREDIT_CARD_NUMBER= new TextField("CREDIT CARD NUMBER", "", 16, TextField.ANY);
		 Three_Digit_CVV_Number  = new TextField("Three Digit CVV Number","", 3,TextField.NUMERIC);
		 Expiry_Month= new TextField("Expiry Month", "", 2, TextField.NUMERIC);
		 Expiry_Year  = new TextField("Expiry Year","",4,TextField.NUMERIC);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
        Submit=new Command("Log Out", Command.EXIT,1);
		Back=new Command("Back", Command.OK,2);
		OrderNow=new Command("Pay Now", Command.OK,2);
		Instructions=new Command("Instructions", Command.OK,2);
		SecurityAgreement=new Command("Security Agreement", Command.OK,2);
		setTicker(ticker);
		append(img);
		append(img1);
		append("****Please Enter Your Credit Card Information****");	
		
		append(CREDIT_CARD_NUMBER);	
		append(Three_Digit_CVV_Number);
		append(Expiry_Month);	
		append(Expiry_Year);
		//append(date);
		//append("* To Change The Date Please Select Date Field And Click Ok");	
		addCommand(OrderNow);
		addCommand(Instructions);
		addCommand(SecurityAgreement);
		addCommand(Submit);
		addCommand(Back);
		setCommandListener(this);
		
	}
	 private String InstructionsHelpText()
  {
    InputStream is = getClass().getResourceAsStream("Instructions.txt");
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
  private String SecurityAgreementHelpText()
  {
    InputStream is = getClass().getResourceAsStream("SecurityAgreement.txt");
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
CreaditCardInfo midlet;
private Display display;
String SelectCreditCardNo,SelectCVVNo,SelectEM,SelectEY,SelectPrice,SelectVender;
public DB(CreaditCardInfo midlet) {
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

os.writeUTF(SelectCreditCardNo.trim());
os.writeUTF(SelectCVVNo.trim());
os.writeUTF(SelectEM.trim());
os.writeUTF(SelectEY.trim());
os.writeUTF(SelectPrice.trim());
os.writeUTF(SelectVender.trim());
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

System.out.println("Transaction Result :"+str);
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
else if(Val.equals("[Balance_is_not_sufficient]"))
	{
Alert al = new Alert("Balance", "Balance_is_not_sufficient !", img2, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);  
System.out.println("[Balance_is_not_sufficient]");

}
else if(Val.equals("[TimeFroud]"))
	{
Alert al = new Alert("Time", "Fraudulent Transaction !", img2, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);  
System.out.println("[TimeFraud]");

}
else if(Val.equals("[AmountFroud]"))
	{
Alert al = new Alert("Amount", "Fraudulent Transaction !", img2, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);  
System.out.println("[AmountFraud]");

}
else if(Val.equals("[Money_Has_Been_Transferred]"))
	{
Alert al = new Alert("Transferred", "Money_Has_Been_Transferred !", img3, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);  
System.out.println("[Money_Has_Been_Transferred]");

}
else if(Val.equals("[Money_Transaction_Has_ Been_Failed]"))
	{
Alert al = new Alert("Failed", "Money_Transaction_Has_ Been_Failed !", img2, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);  
System.out.println("[Money_Transaction_Has_ Been_Failed]");

}
else if(Val.equals("[Please_Check_Your_CVV_NO]"))
	{
Alert al = new Alert("Please_Check_Your_CVV_NO", "Please_Check_Your_CVV_NO !", img2, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);  
System.out.println("[Please_Check_Your_CVV_NO]");

}
else if(Val.equals("[Wrong_Information]"))
	{
Alert al = new Alert("Wrong_Information", "Wrong_Information !", img2, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);  
System.out.println("[Wrong_Information]");

}

} catch (Exception e) {

}
}
/* This method takes input from user like db,user and pwd and pass
to servlet */
public void connectDb(String CreditCardNo,String CVVNo,String EM,String EY,String Price,String Vender) {

this.SelectCreditCardNo = CreditCardNo;

this.SelectCVVNo = CVVNo;

this.SelectEM = EM;

this.SelectEY = EY;

this.SelectPrice = Price;

this.SelectVender = Vender;

}

};

	 public void commandAction (Command c, Displayable d) {
		  String label = c.getLabel();
		 
		  if(label.equals("Log Out"))
			  {
		             
			loginMidlet.destroyApp(false);
			loginMidlet.notifyDestroyed();        
			
		      } 

			  	 else if(label.equals("Back"))
			  {
		             
			Welcome ff=new Welcome(loginMidlet);
            loginMidlet.setScreenlist(ff);
			
		      } 
			  else if(label.equals("Pay Now"))
			  {
				  
        if(CREDIT_CARD_NUMBER.getString().equals(""))
				  {
		Alert al = new Alert("CREDIT CARD NUMBER", "Please enter credit card number !", img2, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);      
					
				  }
		         else if(Three_Digit_CVV_Number.getString().equals(""))
				  {
		Alert al = new Alert("CVV NUMBER", "Please enter CVV number !", img2, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);      
					
				  }  
				  else if(Expiry_Month.getString().equals(""))
				  {
		Alert al = new Alert("Expiry Month", "Please enter Expiry Month!", img2, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);      
					
				  }    
				  else if(Expiry_Year.getString().equals(""))
				  {
		Alert al = new Alert("Expiry Year", "Please enter Expiry Year !", img2, null);
        al.setTimeout(Alert.FOREVER);
        al.setType(AlertType.ERROR);
        loginMidlet.display.setCurrent(al);      
					
				  }    
			else
				  {
					DB db;
					db = new DB(this);
					db.start();
		            db.connectDb(CREDIT_CARD_NUMBER.getString(),Three_Digit_CVV_Number.getString(),Expiry_Month.getString(),Expiry_Year.getString(),ProDetailsStore[1],ProDetailsStore[2]);
				  }
		      
			  } 
			   else if(label.equals("Instructions"))
			  {
		             
	String str;
      // Access the resource and read its contents
      if ((str = InstructionsHelpText()) != null)
      {
        // Create an Alert to display the help text        
					Instructions ff=new Instructions(loginMidlet,str,Catstore,Prostore,ProDetailsStore);
					loginMidlet.setScreen(ff); 
			 
      }			
		      } 
			   else if(label.equals("Security Agreement"))
			  {
		             
	String str;
      // Access the resource and read its contents
      if ((str = SecurityAgreementHelpText()) != null)
      {
        // Create an Alert to display the help text        
					SecurityAggriment ff=new SecurityAggriment(loginMidlet,str,Catstore,Prostore,ProDetailsStore);
					loginMidlet.setScreen(ff); 
			 
      }			
		      } 
	
	 }

}
