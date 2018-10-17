package swing.examples;

import java.awt.EventQueue;

import javax.swing.JFrame;


/**
 * This class is the entry point into the app through the main method.
 * @author Patrick
 *
 */
@SuppressWarnings("serial")
public class DonutApp extends JFrame {

	public DonutApp() {
		initUI();
	}
	
    /**
     * Initalise the java UI
     */
    private void initUI() {

    	// put the Board to the center of the JFrame container.
        add(new DonutBoard());

        // set window size
        setSize(350, 350);

        // set title
        setTitle("Java App - Donut");
        // set close operation
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        // center window on screen
        setLocationRelativeTo(null);
    }    
    
    /**
     * create an instance of our application and make it visible on the screen.
     * @param args
     */
    public static void main(String[] args) {
        
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                DonutApp donutEx = new DonutApp();
                donutEx.setVisible(true);
            }
        });
    }
	
}
