import javax.microedition.lcdui.*;
import java.util.*;
public class Instructions extends Form
implements CommandListener
{
private Image img;
String Help,user;
private Ticker ticker;
private LoginMidlet loginMidlet;
private Command back = new Command("Back", Command.BACK, 1);
private static Displayable instance;
private DateField date =new DateField("         Today's Date/Time in GMT+05:30          ",DateField.DATE_TIME,TimeZone.getTimeZone("GMT+05:30"));
/**
Constructor.
*/
String[] ProDetailsStore;
String Catstore,Prostore;
public Instructions(LoginMidlet log,String H,String cat,String pro,String[] ProDetails)
{
super("Your Help Screen");
try{img = Image.createImage("/treesforfuture.gif");}catch(Exception e){System.out.println(e.getMessage());

		}		
Help=H;
loginMidlet = log;
Calendar cal = Calendar.getInstance();
date.setDate(cal.getTime());
ticker = new Ticker ("Welcome To   A Method of Fraud & Intrusion Detection for E-payment Systems in Mobile e-Commerce ! ");
setTicker(ticker);
try{
	int ProDetailsLen=ProDetails.length;
	ProDetailsStore=new String[ProDetailsLen];
	for(int i=0;i<ProDetailsLen;i++)
								 {
	ProDetailsStore[i]=ProDetails[i];
								 }
    Catstore=cat;
	Prostore=pro;
	append(img);
	}
	catch(Exception e){}
append(date);
append(Help);
addCommand(back);
setCommandListener(this);
instance = this;
}
/**
Returns the single instance of this class. Calling
this method before constructing an object will return
a null pointer.
@return an instance of this class.
*/
public static Displayable getInstance()
{
return instance;
}
public void commandAction(Command c, Displayable d)
{
if (c == back)
{
			CreaditCardInfo ff=new CreaditCardInfo(loginMidlet,Catstore,Prostore,ProDetailsStore);
            loginMidlet.setScreen(ff); 	
}
 
}
}