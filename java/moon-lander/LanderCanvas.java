package moonlander;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;

import javax.swing.JPanel;

public class LanderCanvas extends JPanel
{
	
	private static final int[] groundXS = 
	{
		0 ,30 ,40 ,100,140,160,180,200,220,230,300,310,330,350,
		360,400,410,435,460,465,500,545,560,575,580,600,600,0
	};
	private static final int[] groundYS = 
	{
		500,450,480,510,350,400,395,480,490,480,480,520,515,520,
		515,550,400,350,360,400,410,480,455,465,480,500,600,600
	};
	private int[] landerXS = 
	{
		11,13,27,29,30,26,37,40,40,30,30,33,24,
		21,24,16,19, 16, 7, 0, 0,10,10, 3,14,10
	};
	private int[] landerYS = 
	{ 
		5, 0,0, 5, 20,20,35,35,40,40,35,35,20,
		20,25,25,20,20,35,35,40,40,35,35,20,20
	};
	
	@Override
	protected void paintComponent(Graphics g)
	{
		super.paintComponent(g);
	}
	@Override
	public Dimension getPreferredSize()
	{
		return new Dimension(575,575);
	}
	@Override
	public void paint(Graphics g)
	{
		g.setColor(Color.BLACK);
		g.fillRect(0,0,getWidth(),getHeight());
		g.setColor(Color.GRAY);
		g.fillPolygon(groundXS,groundYS,groundXS.length);
		g.setColor(Color.DARK_GRAY);
		g.translate(400,20);
		g.fillPolygon(landerXS,landerYS,landerXS.length);
	}
	
	public void landerGravity()
	{
		for(int i=0; i<landerYS.length; i++){
			landerYS[i] += 10;
		}
	}
	
	public static void main(String[] args)
	{
		LanderFrame frame = new LanderFrame();
		Timer gravity = new Timer();
		gravity.start();
	}

}
