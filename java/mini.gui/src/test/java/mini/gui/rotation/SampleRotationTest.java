package mini.gui.rotation;

import org.junit.Before;
import org.junit.Test;

public class SampleRotationTest {
	
	private SampleRotation sr;
	
	@Before
	public void setup() {
		sr = new SampleRotation();
	}
	
	
	@SuppressWarnings("static-access")
	@Test
	public void miniGUITest() throws InterruptedException {
		sr.main(null);
		Thread.sleep(3000);
		System.out.println("test-sr");
	}
}
