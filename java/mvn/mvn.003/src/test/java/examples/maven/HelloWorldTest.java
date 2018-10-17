package examples.maven;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;

public class HelloWorldTest {

	private HelloWorld subject;

	@Before
	public void setup() {
		subject = new HelloWorld();
	}
	
	@Test
	public void testGetMessageFalse() {
		assertEquals("Hello World!", subject.getMessage(false));
	}
	
	@Test
	public void testGetMessageTrue() {
		assertEquals("Hello Universe!", subject.getMessage(true));
	}

}
