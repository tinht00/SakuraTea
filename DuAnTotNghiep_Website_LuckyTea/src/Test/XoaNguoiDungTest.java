package Test;

import java.util.concurrent.TimeUnit;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class XoaNguoiDungTest {
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
	        
	        WebElement ND = driver.findElement(By.id("QLND"));
	        Thread.sleep(1000);
	        ND.click();
	        
	        WebElement DSND = driver.findElement(By.id("QLDSND"));
	        Thread.sleep(1000);
	        DSND.click();
	        
	        WebElement xoa = driver.findElement(By.id("#0986900886_Delete"));
	        Thread.sleep(1000);
	        xoa.click();
	        
	        WebElement chonxoa = driver.findElement(By.id("0986900886_xoa"));
	        chonxoa.click();
	        
	    }
	    
	    @AfterClass
	    public static void afterTest() throws InterruptedException {
	        Thread.sleep(5000);
	        driver.quit();

	    }

}
