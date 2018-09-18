package tests;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class GoogleTest extends BaseTest {
	
	@Test
	public void testPatEvsIO() {
	  driver.get("http://patevs.github.io");
	  WebElement siteHead = driver.findElement(By.xpath("//a[@href='http://patevs.github.io']"));
	  String headText = siteHead.getText();
	  boolean textEqual = headText.equals("Patrick Evans");
	  assertTrue("Top left text should be 'Patrick Evans' Actual: " + headText, textEqual);
	}
}
