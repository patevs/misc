package moonlander;

import java.awt.BorderLayout;
import javax.swing.JFrame;

public class LanderFrame extends JFrame 
{
	
	private LanderCanvas canvas;
	
	public LanderFrame()
	{
		super("Moon Lander");
		canvas = new LanderCanvas(); // create canvas
		this.setLayout(new BorderLayout()); // use border layour
		this.add(canvas, BorderLayout.CENTER); // add canvas
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.pack(); // pack components tightly together
		this.setLocationRelativeTo(null); // align center window
		this.setResizable(false); // prevent us from being resizeable
		this.setVisible(true); // make sure we are visible!
	}
}
