package tests;

import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.DesiredCapabilities;

public abstract class BaseTest {

	static WebDriver driver;
	
	public BaseTest() {	
		// TODO: set this in pom
		//String driverPath = System.getProperty("user.dir") + "/src/test/resources/chromedriver_mac64/chromedriver.exe";
		// driver path for windows
		//String driverPath = System.getProperty("user.dir") + "/src/test/resources/chromedriver.exe";
		//System.setProperty("webdriver.chrome.driver", driverPath);
		// driver path for travis ci
		String driverPath = "/usr/local/bin/chromedriver";
		System.setProperty("webdriver.chrome.driver", driverPath);
	}
	
	@Before
    public void before() {
		// driver path for windows
		//driver = initChromeDriver();
		// driver path for travis ci
		driver = initTravisChromeDriver();
		
     }
	
    @After
    public void after() {
        driver.quit();
     }
	
    private static WebDriver initTravisChromeDriver() {
        final ChromeOptions chromeOptions = new ChromeOptions();
        chromeOptions.setBinary("/usr/local/bin/chromedriver");
        chromeOptions.addArguments("--headless");
        chromeOptions.addArguments("--disable-gpu");

        final DesiredCapabilities dc = new DesiredCapabilities();
        dc.setJavascriptEnabled(true);
        dc.setCapability(
            ChromeOptions.CAPABILITY, chromeOptions
        );

        return new ChromeDriver(chromeOptions);
    }
    
	private static WebDriver initChromeDriver() {
		ChromeOptions options = new ChromeOptions();
		options.addArguments("start-maximized");
		options.addArguments("disable-infobars");
		return new ChromeDriver(options);	
	}
}
