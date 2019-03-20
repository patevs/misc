package moonlander;

public class Timer extends Thread
{
	
	LanderCanvas canvas;
	
	@Override 
	public void start()
	{
		this.canvas = new LanderCanvas();
		this.run();
	}
	
	public void run() 
	{
		while(true) 
		{
			try 
			{
				Thread.sleep(100); // 0.1s delay
				canvas.landerGravity();// increment your craft�s y-position here
				canvas.repaint(); // repaint the canvas
			} catch(InterruptedException e) {}
		} 
	} 
}
