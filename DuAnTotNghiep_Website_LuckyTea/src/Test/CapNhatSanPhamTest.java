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

public class CapNhatSanPhamTest {
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
	        
	        
	        
	        WebElement LSP = driver.findElement(By.id("QLSP"));
	        Thread.sleep(1000);
	        LSP.click();
	        
	        
	        
	        WebElement TSP = driver.findElement(By.id("DSSP"));
	        Thread.sleep(1000);
	        TSP.click();
	        
	        Thread.sleep(1000);
	        driver.findElement(By.id("#BB01_Update")).click();
	        
	        
	        Thread.sleep(1000);
	        driver.findElement(By.id("BB01_tensp")).clear();
	        driver.findElement(By.id("BB01_tensp")).sendKeys("Bánh bao đậu đen");
	        Thread.sleep(1000);
	        driver.findElement(By.id("BB01_gia")).clear();
	        driver.findElement(By.id("BB01_gia")).sendKeys("25000");
	        Thread.sleep(1000);
	        driver.findElement(By.id("BB01_mota")).clear();
	        driver.findElement(By.id("BB01_mota")).sendKeys("Bánh bao để test sau khi cập nhật");
	        Thread.sleep(1000);
	        WebElement CF = driver.findElement(By.id("BB01_hinh"));
	        CF.sendKeys("D:\\pj\\DUANTOTNGHIEP\\duantotnghiep\\Website_SakuraTea_DuAnTN\\WebContent\\css\\images\\ts6.jpg");
	        
	        Select dropdown = new Select(driver.findElement(By.id("BB01_maloai")));
	        dropdown.selectByIndex(1); 
	       

	        
	        WebElement Submit = driver.findElement(By.id("BB01_action"));
	        Submit.click();
	    }
	    
	    @AfterClass
	    public static void afterTest() throws InterruptedException {
	        Thread.sleep(5000);
	        driver.quit();

	    }

}
