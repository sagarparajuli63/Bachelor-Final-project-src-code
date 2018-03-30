import java.io.*;
import javax.microedition.midlet.*;
import javax.microedition.io.*;
import javax.microedition.lcdui.*;
import javax.microedition.lcdui.Form;
import java.util.*;

public class ProNotFound extends Form implements CommandListener
{   
	

	private Command Submit,Back;
	private LoginMidlet loginMidlet;
	String Show;
	private Ticker ticker;
	 
	private Display display;
	private TextField userName,password;
	public Form form;
	private Image img;
	public ProNotFound(LoginMidlet log)
			{     
          super("Product Not Found");

		  loginMidlet = log;

		
		  ticker = new Ticker ("Welcome To   A Method of Fraud & Intrusion Detection for E-payment Systems in Mobile e-Commerce !  ");

         Show="Sorry !! Category Not Found !! ";
		
		try{
			img = Image.createImage("/right.png");
		}catch(Exception e){
			System.out.println(e.getMessage());
		}

        Submit=new Command("Log Out", Command.EXIT,1);
		Back=new Command("Back", Command.OK,2);
		setTicker(ticker);
		append(img);
		append(Show);
	  
		addCommand(Submit);
		addCommand(Back);
		setCommandListener(this);
		
	}
	 
		
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
	
	 }

}
