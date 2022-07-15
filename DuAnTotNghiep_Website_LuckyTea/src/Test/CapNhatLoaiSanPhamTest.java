package Test;

import java.util.concurrent.TimeUnit;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class CapNhatLoaiSanPhamTest {
	 public static WebDriver driver;

	 @BeforeClass
	    public static void beforeTest() {
	        System.setProperty("webdriver.chrome.driver", "C:\\Users\\Admin\\Desktop\\DuAn2\\New folder\\duantotnghiep\\chromedriver.exe");
	        driver = new ChromeDriver();
	    }

	    @Test
	    public void TC1() throws InterruptedException {
	        driver.get("http://localhost:8085/Website_SakuraTea_DuAnTN/");
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
	        
	        
	        
	        WebElement TSP = driver.findElement(By.id("DSLSP"));
	        Thread.sleep(1000);
	        TSP.click();
	        
	        Thread.sleep(1000);
	        driver.findElement(By.id("#BB_Update")).click();
	        Thread.sleep(1000);
	        WebElement TL = driver.findElement(By.id("BB"));
	        Thread.sleep(1000);
	        TL.clear();
	        Thread.sleep(1000);
	        TL.sendKeys("Bánh Bao Sau Khi Edit");
	        Thread.sleep(1000);
	        driver.findElement(By.id("Bánh Bao")).click();
	    }
	    
	    @AfterClass
	    public static void afterTest() throws InterruptedException {
	        Thread.sleep(5000);
	        driver.quit();

	    }

}
