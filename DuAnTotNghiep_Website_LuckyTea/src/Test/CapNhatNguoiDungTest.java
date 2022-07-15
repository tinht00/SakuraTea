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

public class CapNhatNguoiDungTest {
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
	        
	        WebElement capnhat = driver.findElement(By.id("#0389381215_Update"));
	        Thread.sleep(1000);
	        capnhat.click();
	        
	        Thread.sleep(1000);
	        WebElement hoten = driver.findElement(By.id("0389381215_hoten"));	        
	        hoten.clear();
	        hoten.sendKeys("Lê Minh Quý");
	        
	        Thread.sleep(1000);
	        WebElement sodt = driver.findElement(By.id("0389381215_sodt"));
	        sodt.clear();
	        sodt.sendKeys("0986900886");
	        
	        Thread.sleep(1000);
	        WebElement matkhau = driver.findElement(By.id("0389381215_matkhau"));
	        matkhau.clear();
	        matkhau.sendKeys("12345678");
	        	        
	        Thread.sleep(1000);
	        WebElement email = driver.findElement(By.id("0389381215_email"));
	        email.clear();
	        email.sendKeys("quylm@gmail.com");
	        
	        Thread.sleep(1000);
	        WebElement diachi = driver.findElement(By.id("0389381215_diachi"));
	        diachi.clear();
	        diachi.sendKeys("Cần Thơ");
	        
	        Thread.sleep(1000);
	        WebElement vaitro = driver.findElement(By.id("0389381215_vaitro"));
	        Select dropdown = new Select(vaitro);
	        dropdown.selectByIndex(2);
	        
	        WebElement luu = driver.findElement(By.id("0389381215_luu"));
	        luu.click();
	        
	    }
	    
	    @AfterClass
	    public static void afterTest() throws InterruptedException {
	        Thread.sleep(5000);
	        driver.quit();

	    }

}
