package controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.criterion.Restrictions;
import org.jboss.logging.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import model.Dondathang;
import model.Dondathangchitiet;
import model.Items;
import model.Sanpham;

@Transactional
@Controller
public class ShoppingcartController {
	@Autowired
	SessionFactory sFactory;
	Items items = new Items();
	
	@RequestMapping("index")
	public String testCart(ModelMap m) {
		m.put("listsp", findAllSP());
		return "shoppingcart/index";
	}
	
	@SuppressWarnings("unchecked")
	public List<Sanpham> findAllSP() {
		return sFactory.getCurrentSession().createCriteria(Sanpham.class).list();
	}
	
public Sanpham find(int masp) {
		
		return (Sanpham) sFactory.getCurrentSession().createCriteria(Sanpham.class).add(Restrictions.eq("masp", masp))
				.uniqueResult();

	}

@RequestMapping(value = "ordernow_chitiet/{masp}", method = RequestMethod.GET)
public String ordernow_chitiet(@PathVariable(value = "masp") int masp,
		
		ModelMap mm, HttpSession session,
		@RequestParam(required = false,value="ghichu", defaultValue = "Size M, + 100% Ice,  + 100% Sugar") String ghichu,
		@RequestParam(required = false,value="quantity", defaultValue = "1") int soluong,
		@RequestParam(required = false,value="giaTopping", defaultValue = "0") int giaTopping,
		@RequestParam(required = false,value="giasp") int giasp) {

	String  maItem =today+"DH"+ this.randomAlphaNumeric(this.numberOfCharactor);
	if (session.getAttribute("cart") == null) {

		List<Items> cart = new ArrayList<Items>();

		items.setGhichu(ghichu);
		items.setQuantity(soluong);
		items.setGiaTopping(giaTopping);
		items.setGia(giasp);
		items.setMaItem(maItem);
		
	
		cart.add(new Items(items.getStt(),items.getMaItem(), this.find(masp),items.getGia(),items.getGiaTopping(), items.getQuantity(),items.getGhichu(),items.getTongTien()));
		
		session.setAttribute("cart", cart);
	} else {
		List<Items> cart = (List<Items>) session.getAttribute("cart");
		session.getAttribute("cart");


			items.setGhichu(ghichu);
			items.setQuantity(soluong);
			items.setGiaTopping(giaTopping);
			items.setGia(giasp);
			if(cart.size()>0) {
				String maDH = cart.get(0).getMaItem();
			

		cart.add(new Items(items.getStt(),maDH, this.find(masp),items.getGia(),items.getGiaTopping(), items.getQuantity(),items.getGhichu(),items.getTongTien()));
		}else {
			cart.add(new Items(items.getStt(),items.getMaItem(), this.find(masp),items.getGia(),items.getGiaTopping(), items.getQuantity(),items.getGhichu(),items.getTongTien()));
			}

			
		session.setAttribute("cart", cart);
	}

	return "redirect:/SanPham/{masp}.htm"; // page name
}



@RequestMapping(value = "ordernow/{masp}", method = RequestMethod.GET)
public String ordernow(@PathVariable(value = "masp") int masp,
		
		ModelMap mm, HttpSession session,
		@RequestParam(required = false,value="ghichu", defaultValue = "Size M, + 100% Ice,  + 100% Sugar") String ghichu,
		@RequestParam(required = false,value="quantity", defaultValue = "1") int soluong,
		@RequestParam(required = false,value="giaTopping", defaultValue = "0") int giaTopping,
		@RequestParam(required = false,value="giasp") int giasp) {

	String  maItem =today+"DH"+ this.randomAlphaNumeric(this.numberOfCharactor);
	if (session.getAttribute("cart") == null) {

		List<Items> cart = new ArrayList<Items>();

		items.setGhichu(ghichu);
		items.setQuantity(soluong);
		items.setGiaTopping(giaTopping);
		items.setGia(giasp);
		items.setMaItem(maItem);
		
	
		cart.add(new Items(items.getStt(),items.getMaItem(), this.find(masp),items.getGia(),items.getGiaTopping(), items.getQuantity(),items.getGhichu(),items.getTongTien()));
		
		session.setAttribute("cart", cart);
	} else {
		List<Items> cart = (List<Items>) session.getAttribute("cart");
		session.getAttribute("cart");


			items.setGhichu(ghichu);
			items.setQuantity(soluong);
			items.setGiaTopping(giaTopping);
			items.setGia(giasp);
			if(cart.size()>0) {
				String maDH = cart.get(0).getMaItem();
			

		cart.add(new Items(items.getStt(),maDH, this.find(masp),items.getGia(),items.getGiaTopping(), items.getQuantity(),items.getGhichu(),items.getTongTien()));
		}else {
			cart.add(new Items(items.getStt(),items.getMaItem(), this.find(masp),items.getGia(),items.getGiaTopping(), items.getQuantity(),items.getGhichu(),items.getTongTien()));
			}

			
		session.setAttribute("cart", cart);
	}

	return "redirect:/MyCart.htm"; // page name
}




@RequestMapping(value = "ordernow_home/{masp}", method = RequestMethod.GET)
public String ordernowhome(@PathVariable(value = "masp") int masp,
		
		ModelMap mm, HttpSession session,
		@RequestParam(required = false,value="ghichu", defaultValue = "Size M, + 100% Ice,  + 100% Sugar") String ghichu,
		@RequestParam(required = false,value="quantity", defaultValue = "1") int soluong,
		@RequestParam(required = false,value="giaTopping", defaultValue = "0") int giaTopping,
		@RequestParam(required = false,value="giasp") int giasp) {

	String  maItem =today+"DH"+ this.randomAlphaNumeric(this.numberOfCharactor);
	if (session.getAttribute("cart") == null) {

		List<Items> cart = new ArrayList<Items>();
	
		items.setGhichu(ghichu);
		items.setQuantity(soluong);
		items.setGiaTopping(giaTopping);
		items.setGia(giasp);
		items.setMaItem(maItem);

		cart.add(new Items(items.getStt(),items.getMaItem(), this.find(masp),items.getGia(),items.getGiaTopping(), items.getQuantity(),items.getGhichu(),items.getTongTien()));
		
		session.setAttribute("cart", cart);
	} else {
		List<Items> cart = (List<Items>) session.getAttribute("cart");
		session.getAttribute("cart");
		 // using method isExisting here
		int index = isExisting(masp, session);
		if (index == -1) {
	
			items.setGhichu(ghichu);
			items.setQuantity(soluong);
			items.setGiaTopping(giaTopping);
			items.setGia(giasp);
			if(cart.size()>0) {
				String maDH = cart.get(0).getMaItem();
			
		System.out.println(maDH);
		cart.add(new Items(items.getStt(),maDH, this.find(masp),items.getGia(),items.getGiaTopping(), items.getQuantity(),items.getGhichu(),items.getTongTien()));
		}else {
			cart.add(new Items(items.getStt(),items.getMaItem(), this.find(masp),items.getGia(),items.getGiaTopping(), items.getQuantity(),items.getGhichu(),items.getTongTien()));
			}
			
		}else {
			int quantity = cart.get(index).getQuantity() + 1;
			cart.get(index).setQuantity(quantity);
		}
		
	
		session.setAttribute("cart", cart);
	}

	return "redirect:/Home.htm"; // page name
}




@RequestMapping("MyCart")
public String myCart(ModelMap m) {
	m.addAttribute("Dondathang", new Dondathang());
	return "shoppingcart/cart";
}



@SuppressWarnings("unchecked")
@RequestMapping(value = "delete/{stt}", method = RequestMethod.GET)
public String delete(@PathVariable(value = "stt") int stt, HttpSession session) {
	List<Items> cart = (List<Items>) session.getAttribute("cart");

	int index = isExistingItem(stt, session);
	System.out.println();
	cart.remove(index);
	
	if(cart.size()==0) {
		return "redirect:/Home.htm";
	}
	
	session.setAttribute("cart", cart);
	return "redirect:/MyCart.htm";
}

@SuppressWarnings("unchecked")
@RequestMapping(value = "delete_home/{stt}", method = RequestMethod.GET)
public String deleteSpHome(@PathVariable(value = "stt") int stt, HttpSession session) {
	List<Items> cart = (List<Items>) session.getAttribute("cart");

	int index = isExistingItem(stt, session);
	System.out.println();
	cart.remove(index);
	session.setAttribute("cart", cart);
	return "redirect:/#";
}


@SuppressWarnings("unchecked")
@RequestMapping(value = "update", method = RequestMethod.POST)
public String update(HttpServletRequest rq, HttpSession session) {
	List<Items> cart = (List<Items>) session.getAttribute("cart");
	String  []quantity=rq.getParameterValues("quantity");
	for (int i = 0; i < cart.size(); i++) {
	cart.get(i).setQuantity(Integer.parseInt(quantity[i]));
	}
	session.setAttribute("cart", cart);
	return "redirect:/MyCart.htm";
}

@SuppressWarnings("unchecked")
private int isExistingItem(int  stt, HttpSession session) {

	List<Items> cart = (List<Items>) session.getAttribute("cart");

	for (int i = 0; i < cart.size(); i++)

		if (cart.get(i).getStt() == stt)
			return i;

	return -1;
}


@SuppressWarnings("unchecked")
private int isExisting(int masp, HttpSession session) {

List<Items> cart = (List<Items>) session.getAttribute("cart");

	for (int i = 0; i < cart.size(); i++) {

		if (cart.get(i).getSp().getMasp() == masp)
			return i;
	}
	return -1;
}


private static final String alpha = "abcdefghijklmnopqrstuvwxyz"; // a-z
private static final String alphaUpperCase = alpha.toUpperCase(); // A-Z
private static final String digits = "0123456789"; // 0-9	
private static final String ALPHA_NUMERIC = alpha + alphaUpperCase + digits;

Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
String fmdate = sdf.format(date);
String today = fmdate.replace("/", "");
public int numberOfCharactor = 4;
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
