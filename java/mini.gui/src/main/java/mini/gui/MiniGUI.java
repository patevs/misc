package mini.gui;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

/**	
 * 	The MiniGUI program creates a simple button within 
 * 		a JFrame using Swing.
 * 
 * @author 
 *  Patrick Evans
 * 	email: ppevans11@gmail.com
 *
 */

@SuppressWarnings("serial")
public class MiniGUI extends JFrame{
	
	/**
	 * MiniGUI program entry point: main method
	 * @param args
	 */
	public static void main(String[] args){
		// invoke Swing within a new runnable thread using run method
		SwingUtilities.invokeLater(new Runnable(){
			/**
			 * Run method; creates MiniGUI
			 */
			public void run(){
				// MiniGui object g
				MiniGUI g = new MiniGUI();
				// exit on close
				g.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
				g.getRootPane().setLayout(new BorderLayout());
				// button does nothing
				JButton b = new JButton("****** THIS DOES NOTHING ******");
				b.addActionListener(new ActionListener(){
					// button action does something
					public void actionPerformed(ActionEvent e){
						System.out.println("Button Pressed!");
						MiniGUI.main(args);
					}
				});
				// render
				g.getRootPane().add(b, BorderLayout.CENTER);
				g.pack();
				g.setVisible(true);
			}
		});
	}
}
