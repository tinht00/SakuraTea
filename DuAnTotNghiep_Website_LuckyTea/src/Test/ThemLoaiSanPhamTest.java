package Test;

import java.util.concurrent.TimeUnit;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class ThemLoaiSanPhamTest {
	 public static WebDriver driver;

	 @BeforeClass
	    public static void beforeTest() {
	        System.setProperty("webdriver.chrome.driver", "D:\\pj\\chromedriver.exe");
	        driver = new ChromeDriver();
	    }

	    @Test
	    public void TC1() throws InterruptedException {
	        driver.get("http://localhost:8081/Website_SakuraTea_DuAnTN/");
	        driver.manage().window().maximize();
	        driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
	        
	        WebElement login = driver.findElement(By.id("DN"));
	        login.click();
	        
	        WebElement user = driver.findElement(By.name("sodt"));
	        user.sendKeys("1");
	        
	        
	        WebElement pass = driver.findElement(By.name("matkhau"));
	        pass.sendKeys("1");
	        
	        WebElement DN = driver.findElement(By.id("DN"));
	        DN.click();
	        
	        
	        
	        WebElement LSP = driver.findElement(By.id("QLLSP"));
	        Thread.sleep(1000);
	        LSP.click();
	        
	        
	        
	        WebElement TSP = driver.findElement(By.id("TLSP"));
	        Thread.sleep(1000);
	        TSP.click();
	        
	        Thread.sleep(1000);
	        driver.findElement(By.name("maloai")).clear();
	        driver.findElement(By.name("maloai")).sendKeys("BB");
	        Thread.sleep(1000);
	        WebElement TL = driver.findElement(By.id("tenloai"));
	        TL.clear();
	        TL.sendKeys("Bánh Bao");
	        
	        WebElement Submit = driver.findElement(By.name("action"));
	        Submit.click();
	    }
	    
	    @AfterClass
	    public static void afterTest() throws InterruptedException {
	        Thread.sleep(5000);
	        driver.quit();

	    }

}
