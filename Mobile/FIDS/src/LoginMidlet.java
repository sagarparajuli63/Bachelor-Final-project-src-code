import java.io.*;
import javax.microedition.io.*;
import javax.microedition.midlet.MIDlet;
import javax.microedition.lcdui.*;
import javax.microedition.lcdui.Image;

public class LoginMidlet extends MIDlet implements CommandListener{
	MyGameCanvas gCanvas;
	private String username;
	private String url = "http://192.168.1.4:8080/FIDS/GetConnection";
	public Display display;
	private TextField userName,password;
	public Form form;
	private Ticker ticker;
	private Command login,cancel;
	private Image img,img1,img2;
	private List screen;
 	DB db;


	public LoginMidlet() {
		gCanvas = new MyGameCanvas(this);
		form = new Form("Sign in Here....");
		ticker = new Ticker ("Welcome   To   A Method of Fraud & Intrusion Detection for E-payment Systems in Mobile e-Commerce ! ");
		userName = new TextField("LoginID:", "", 30, TextField.ANY);
		password = new TextField("Password:", "", 30, TextField.PASSWORD);
		cancel = new Command("Cancel", Command.CANCEL, 2);
		login = new Command("Login", Command.OK, 2);
		try{
			img = Image.createImage("/ids_changing_world.png");
            img1 = Image.createImage("/front_left1_bad.png");
			img2 = Image.createImage("/warning.png");
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}


 	public void startApp() {
		System.out.println("startApp....");
		MyGameCanvas.isSplash = true;
		display = Display.getDisplay(this);
		gCanvas.start();
		display.setCurrent(gCanvas);
		form.setTicker(ticker);
		try{form.append(img);}catch(Exception e){}
		form.append(userName);
		form.append(password);
		form.addCommand(cancel);
		form.addCommand(login);
		form.setCommandListener(this);
		
        
	}

	public void LoginWindow() {
	display.setCurrent(form);
	}

	public void pauseApp() {
	}

	public void destroyApp(boolean unconditional) {
		notifyDestroyed();
		System.out.println("notifyDestroyed....");

	}

	public void validateUser(String name, String password) {
        /*db = new DB(this);
		db.start();
		db.connectDb(name,password);*/
		if (name.equals("") || password.equals("")) {
			showAlert("Pls Dont Keep Any Field Blank");
		} else {
			db = new DB(this);
		db.start();
		db.connectDb(name,password);
		}
	}

	public void showMsg() {

	  screen = new Welcome(this);
	  display.setCurrent(screen);

	}

	
	public void ForgotPassword() {

	  screen = new Welcome(this);
	  display.setCurrent(screen);

	}

	public void tryAgain() {
		Alert error = new Alert("Login Incorrect", "Please Enter Correct Id and Password and try again!!!!!",img1, AlertType.ERROR);
		error.setTimeout(3000);
		userName.setString("");
		password.setString("");
		display.setCurrent(error, form);
	}
	public void setScreen(Form form)
	{
	  display.setCurrent(form);
	}
	public void setScreenlist(List list)
	{
	  display.setCurrent(list);
	}
    private void showAlert(String err) {
	Alert a = new Alert("");
	a.setString(err);
	//a.setTimeout(Alert.FOREVER);
	a.setTimeout(3000);
	display.setCurrent(a);
	}
	public void commandAction(Command c, Displayable d) {
		String label = c.getLabel();
		if(label.equals("Cancel")) {
			destroyApp(true);
			
		} else if(label.equals("Login")) {
			validateUser(userName.getString(), password.getString());
		}
	
	}
public class DB implements Runnable {
LoginMidlet midlet;
private Display display;
//String db;
String userid;
String password;
public DB(LoginMidlet midlet) {
this.midlet = midlet;
display = Display.getDisplay(midlet);
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

//os.writeUTF(db.trim());
os.writeUTF(userid.trim());
os.writeUTF(password.trim());
os.flush();
os.close();



// Get the response from the servlet page.
DataInputStream is =(DataInputStream)c.openDataInputStream();
//is = c.openInputStream();
int ch;
sb = new StringBuffer();
while ((ch = is.read()) != -1) {
sb.append((char)ch);
}

String Val = sb.toString();
System.out.println("value of Val is"+Val);
//showAlert(sb.toString());
if(Val.equals("[Validation Correct]"))
	{
System.out.println("OK! You Have Entered A Correct ID And Password");
showMsg();
}
else if(Val.equals("[Validation Wrong]"))
{
	System.out.println("Pls Enter The Correct ID And Password");
	tryAgain();
}

} catch (Exception e) {
showAlert(e.getMessage());
}
}
/* This method takes input from user like db,user and pwd and pass
to servlet */
public void connectDb(String user,String pwd) {
//this.db = db;
this.userid = user;
this.password = pwd;
}

};
}