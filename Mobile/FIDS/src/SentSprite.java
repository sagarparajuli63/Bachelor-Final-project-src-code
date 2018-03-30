public class SentSprite implements Runnable 
{

private MyGameCanvas canvas;

private Thread thread;

public SentSprite(MyGameCanvas parent) 
{

this.canvas = canvas;
}


public void start() 
{

thread = new Thread(this);
thread.start();
}


public void run() 
{
try 
{
while(true) 
{

Thread.currentThread().sleep(700);
}

} catch(Exception e) { System.err.println(e); }
}




}
