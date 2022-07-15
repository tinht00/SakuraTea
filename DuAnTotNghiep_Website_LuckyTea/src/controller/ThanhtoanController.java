package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.openqa.selenium.support.ui.Sleeper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

//import com.sun.corba.se.impl.protocol.giopmsgheaders.Message;

//import javafx.scene.control.Alert;
import model.Dondathang;
import model.Dondathangchitiet;
import model.Items;
import model.Nguoidung;

@Transactional
@Controller
public class ThanhtoanController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("XacNhanThanhToan")
	public String index(ModelMap m, @ModelAttribute("AllDondathang") List<Dondathang> dondathang,
			@ModelAttribute("AllDondathangct") List<Dondathangchitiet> dondathangct) {
		m.addAttribute("Dondathang", new Dondathang());
		m.addAttribute("dondathangs", dondathang);

		m.addAttribute("Dondathangct", new Dondathangchitiet());
		m.addAttribute("dondathangcts", dondathangct);
		return "shoppingcart/cart";
	}

	@ModelAttribute("AllDondathangct")
	public List<Dondathangchitiet> findAllDonDatHang_CT() {
		Session s = factory.openSession();
		String hql = "From Dondathangchitiet";
		Query query = s.createQuery(hql);
		List<Dondathangchitiet> list = query.list();
		return list;
	}

	@ModelAttribute("AllDondathang")
	public List<Dondathang> findAllDonDatHang() {
		Session s = factory.openSession();
		String hql = "From Dondathang";
		Query query = s.createQuery(hql);
		List<Dondathang> list = query.list();
		return list;
	}

	@RequestMapping("thanhtoan")
	public String thanhtoan(HttpServletRequest rq, HttpSession session, Dondathangchitiet dondathangct,
			@ModelAttribute("Dondathang") Dondathang dondathang,
			@RequestParam("giogiao")String giogiao) {
		Session ss = factory.openSession();
		Transaction t =null;
		try {
		
			String madh = today + "DH" + this.randomAlphaNumeric(this.numberOfCharactor);
			if (session.getAttribute("cart") != null) {
				List<Items> cart = (List<Items>) session.getAttribute("cart");
				
				if (cart.size()==0) {
					rq.setAttribute("thanhtoan", "<p style='color:red'>Không có sản phẩm trong giỏ hàng!</p>");
					
					return "shoppingcart/cart";
				}else {

				int total = 0;
				dondathang.setMadh(cart.get(0).getMaItem());
				dondathang.setNgaydat(new Date());
				dondathang.setTinhtrang("Chưa giao");
				for (int i = 0; i < cart.size(); i++) {
					total += cart.get(i).getTongTien();
					dondathang.setTongtien(total);			
				}
				ss.beginTransaction();
				ss.save(dondathang);
				
				ss.getTransaction().commit();
				for (int i = 0; i < cart.size(); i++) {
					Session s2 = factory.openSession();
					t = s2.beginTransaction();
					dondathangct.setMadh(dondathang.getMadh());
					dondathangct.setMasp(cart.get(i).getSp().getMasp());
					dondathangct.setGhichu(cart.get(i).getGhichu());
					dondathangct.setSoluong(cart.get(i).getQuantity());
					dondathangct.setTonggia(cart.get(i).getTongTien());
					System.out.println(cart.get(i));
					s2.save(dondathangct);
				
					t.commit();		
//				   ss.close();
				
				}
		
				rq.setAttribute("thanhtoan", "<p style='color:green;'>Đặt hàng thành công!</p>");
				session.removeAttribute("cart");
				return "shoppingcart/cart";
				}
				
		
			}else {
				rq.setAttribute("thanhtoan", "<p style='color:red'>Không có sản phẩm trong giỏ hàng!</p>");
				return "shoppingcart/cart";
			}
			
			
		} catch (Exception e) {
		
			t.rollback();
			rq.setAttribute("thanhtoan", "<p style='color:red;'>Đặt hàng thất bại!</p>");
			e.printStackTrace();
		}
		try {
			
			Thread.sleep(2000);
		} catch (InterruptedException e) {
		
			e.printStackTrace();
		}
		return "shoppingcart/cart";
	}

	private static final String alpha = "abcdefghijklmnopqrstuvwxyz"; // a-z
	private static final String alphaUpperCase = alpha.toUpperCase(); // A-Z
	private static final String digits = "0123456789"; // 0-9
	private static final String ALPHA_NUMERIC = alpha + alphaUpperCase + digits;

	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	String fmdate = sdf.format(date);
	String today = fmdate.replace("/", "");
	public int numberOfCharactor = 2;
	private static Random rd = new Random();

	public static int randomNumber(int min, int max) {
		return rd.nextInt((max - min) + 1) + min;
	}

	public String randomAlphaNumeric(int numberOfCharactor) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < numberOfCharactor; i++) {
			int number = randomNumber(0, ALPHA_NUMERIC.length() - 1);
			char ch = ALPHA_NUMERIC.charAt(number);
			sb.append(ch);
		}
		return sb.toString();
	}

}
