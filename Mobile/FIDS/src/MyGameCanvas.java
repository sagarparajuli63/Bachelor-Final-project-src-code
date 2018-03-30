import javax.microedition.lcdui.Image;
import javax.microedition.lcdui.Graphics;
import javax.microedition.lcdui.game.GameCanvas;
import java.util.Timer;
import java.io.IOException;

public class MyGameCanvas extends GameCanvas implements Runnable

{
static java.lang.Thread thread=null;
int GET_WIDTH = getWidth();
int GET_HEIGHT = getHeight();

private Image [] splash; 

private Timer timer; 

public static boolean isSplash = true;

private SentSprite sentSprite;
private LoginMidlet gameMIDlet;

public MyGameCanvas(LoginMidlet gameMIDlet) 
{
super(false);
this.gameMIDlet = gameMIDlet;

}

public void start() 
{
System.out.println("start...."+isSplash);
sentSprite = new SentSprite(this);
sentSprite.start();
splash = new Image [3];

try 
{

splash[0] = Image.createImage("/loadingAnimated.gif"); 
splash[1] = Image.createImage("/2.png");
splash[2] = Image.createImage("/world_map_8.jpg");


}catch(IOException ioex)
{
System.err.println(ioex);
} 

thread = new java.lang.Thread(this);
thread.start();

}

public void run() 
{

while(true) 
{ 
if(isSplash)
for(int i=0; i<3; i++)
{
paintSplash(getGraphics(),i);
} 

try { 
Thread.currentThread().sleep(30);
}catch(Exception e) {}
} 
} 


public void paintSplash(Graphics g, int i)
{ 

setFullScreenMode(true); 
g.setColor(0xffffff);
g.fillRect(0, 0, getWidth(), getHeight()); 
g.drawImage(splash[i],(GET_WIDTH/2)-60,(GET_HEIGHT/2)-25,g.LEFT | g.TOP);
flushGraphics(); 

try
{
Thread.sleep(2500);
}
catch(Exception e) {}

if(i == 2)
{ 
isSplash = false;
//System.out.println("Waiting 4 form....");
gameMIDlet.LoginWindow();

}
}

private void startTimer(int delay, int mode)

{ 
timer = new Timer(); 
}


}
