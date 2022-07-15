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

public class ThemSanPhamTest {
	 public static WebDriver driver;

	 @BeforeClass
	    public static void beforeTest() {
	        System.setProperty("webdriver.chrome.driver", "C:\\ChromeDriver\\chromedriver.exe");
	        driver = new ChromeDriver();
	    }

	    @Test
	    public void TC1() throws InterruptedException {
	        driver.get("http://localhost:8080/Website_SakuraTea_DuAnTN/");
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
	        
	        
	        
	        WebElement TSP = driver.findElement(By.id("TSP"));
	        Thread.sleep(1000);
	        TSP.click();
	        
	        Thread.sleep(1000);
	        driver.findElement(By.id("masp")).clear();
	        driver.findElement(By.id("masp")).sendKeys("BB01");
	        Thread.sleep(1000);
	        driver.findElement(By.id("tensp")).clear();
	        driver.findElement(By.id("tensp")).sendKeys("Bánh bao đậu xanh");
	        Thread.sleep(1000);
	        driver.findElement(By.id("gia")).clear();
	        driver.findElement(By.id("gia")).sendKeys("15000");
	        Thread.sleep(1000);
	        driver.findElement(By.id("mota")).clear();
	        driver.findElement(By.id("mota")).sendKeys("Bánh bao để test");
	        Thread.sleep(1000);
	        WebElement CF = driver.findElement(By.id("CH"));
	        CF.sendKeys("D:\\pj\\DUANTOTNGHIEP\\duantotnghiep\\Website_SakuraTea_DuAnTN\\WebContent\\css\\images\\ts5.jpg");
	        
	        Select dropdown = new Select(driver.findElement(By.id("loaisanpham.maloai")));
	        dropdown.selectByIndex(3); 
	       

	        
	        WebElement Submit = driver.findElement(By.name("action"));
	        Submit.click();
	    }
	    
		/*
		 * @AfterClass public static void afterTest() throws InterruptedException {
		 * Thread.sleep(5000); driver.quit();
		 * 
		 * }
		 */

}
