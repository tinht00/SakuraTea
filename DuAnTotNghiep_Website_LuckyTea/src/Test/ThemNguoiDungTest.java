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

public class ThemNguoiDungTest {
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
	              
	        WebElement TND = driver.findElement(By.id("QLTND"));
	        Thread.sleep(1000);
	        TND.click();
	        
	        Thread.sleep(1000);
	        WebElement hoten = driver.findElement(By.id("hoten"));
	        hoten.clear();
	        hoten.sendKeys("Nguyễn Ngọc Tín");
	        
	        Thread.sleep(1000);
	        WebElement sodt = driver.findElement(By.id("sodt"));
	        sodt.clear();
	        sodt.sendKeys("0389381215");
	        
	        Thread.sleep(1000);
	        WebElement matkhau = driver.findElement(By.id("password"));
	        matkhau.clear();
	        matkhau.sendKeys("123");
	        
	        Thread.sleep(1000);
	        WebElement nhaplai = driver.findElement(By.id("confirm_password"));
	        nhaplai.clear();
	        nhaplai.sendKeys("123");
	        
	        Thread.sleep(1000);
	        WebElement email = driver.findElement(By.id("email"));
	        email.clear();
	        email.sendKeys("tinnnpc00019@fpt.edu.vn");
	        
	        Thread.sleep(1000);
	        WebElement diachi = driver.findElement(By.id("diachi"));
	        diachi.clear();
	        diachi.sendKeys("An Giang");
	        
	        Thread.sleep(1000);
	        WebElement vaitro = driver.findElement(By.id("vaitro"));
	        Select dropdown = new Select(vaitro);
	        dropdown.selectByIndex(2);
	                
	        WebElement Submit = driver.findElement(By.name("action"));
	        Submit.click();
	    }
	    
	    @AfterClass
	    public static void afterTest() throws InterruptedException {
	        Thread.sleep(5000);
	        driver.quit();

	    }

}
