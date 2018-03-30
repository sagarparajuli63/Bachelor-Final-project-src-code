import java.io.*;
import javax.microedition.midlet.*;
import javax.microedition.io.*;
import javax.microedition.lcdui.*;
import javax.microedition.lcdui.Form;
import java.util.*;

public class ProductDetails extends Form implements CommandListener
{   
	

	private Command Submit,Back,OrderNow;
	private LoginMidlet loginMidlet;
	private Ticker ticker;
	private Display display;
	public Form form;
	private Image img;
	String[] ProDetailsStore;
	String CatStore,ProStore;
	public ProductDetails(LoginMidlet log,String cat,String pro,String[] ProDetails)
			{     
          super("Product Details");

		  loginMidlet = log;

		
		  ticker = new Ticker ("Welcome To   A Method of Fraud & Intrusion Detection for E-payment Systems in Mobile e-Commerce !  ");

        
		
		try{
			img = Image.createImage("/footer2.jpg");
			int ProDetailsLen=ProDetails.length;
	        ProDetailsStore=new String[ProDetailsLen];
		    for(int i=0;i<ProDetailsLen;i++)
								 {
			ProDetailsStore[i]=ProDetails[i];

								 }
			CatStore=cat;
			ProStore=pro;
		}catch(Exception e){
			System.out.println(e.getMessage());
		}

        Submit=new Command("Log Out", Command.EXIT,1);
		Back=new Command("Back", Command.OK,2);
		OrderNow=new Command("Order Now", Command.OK,2);
		setTicker(ticker);
		append(img);
		append("           ****Your Order Summary****");	
		append("Category :              "+cat);	
		append("Product :                       "+pro);	
		append("Product Details :             "+ProDetails[0]);	
	    append("Price(in Rs.) :              "+ProDetails[1]);	
		append("Vender :                       "+ProDetails[2]);	
		
		addCommand(OrderNow);
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
			  else if(label.equals("Order Now"))
			  {
		             
			CreaditCardInfo ff=new CreaditCardInfo(loginMidlet,CatStore,ProStore,ProDetailsStore);
            loginMidlet.setScreen(ff); 	
			
		      } 
	
	 }

}
