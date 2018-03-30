import javax.microedition.lcdui.*;
import java.util.*;
/**
Demonstrates the use of the MIDP UI DateField class.
@see javax.microedition.lcdui.DateField
*/
public class DateFieldDemo extends Form
implements CommandListener
{
private Image img;
String Help,user;
private Ticker ticker;
private LoginMidlet LoginMidlet;
private Command back = new Command("Back", Command.BACK, 1);
private static Displayable instance;
/*private DateField date =
new DateField("Date/Time in GMT",DateField.DATE_TIME,TimeZone.getDefault());*/
private DateField date =new DateField("         Today's Date/Time in GMT+05:30          ",DateField.DATE_TIME,TimeZone.getTimeZone("GMT+05:30"));
/**
Constructor.
*/
public DateFieldDemo(LoginMidlet log,String H,String U)
{
super("Your Help Screen");
try{img = Image.createImage("/13.jpg");}catch(Exception e){System.out.println(e.getMessage());

		}		
Help=H;
user=U;
LoginMidlet = log;
Calendar cal = Calendar.getInstance();
date.setDate(cal.getTime());
ticker = new Ticker ("Welcome Mr./Miss. "+user+"  To   Visiting   Card ! This Is Helping Zone ! ");
setTicker(ticker);
try{append(img);}catch(Exception e){}
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
					Welcome ff=new Welcome(LoginMidlet);
					LoginMidlet.setScreenlist(ff); 
}
 
}
}