package mini.gui;

import org.junit.Before;
import org.junit.Test;

/**
 * Test MiniGui object will run correct
 * @author root
 *
 */
public class MiniGUITest {
	
	private MiniGUI g;
	
	@Before
	public void setup() {
		g = new MiniGUI();
	}
	
	
	@SuppressWarnings("static-access")
	@Test
	public void miniGUITest() throws InterruptedException {
		g.main(null);
		Thread.sleep(3000);
		System.out.println("test0");
	}
	
	
}
