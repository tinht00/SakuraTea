package controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Nguoidung;

@Transactional
@Controller
@RequestMapping("/dangki/")
public class DangkiController {
	
	@Autowired
	SessionFactory factory;

	@RequestMapping("DangKi")
	public String index(ModelMap m, @ModelAttribute("allnguoidung") List<Nguoidung> nguoidung) {
		m.addAttribute("nguoidung", new Nguoidung());
		m.addAttribute("nguoidungs", nguoidung);
		return "admin/DangKi";
	}
	
	@ModelAttribute("allnguoidung")
	public List<Nguoidung> findAllNguoiDung() {
		Session s = factory.openSession();
		String hql = "From Nguoidung";
		Query query = s.createQuery(hql); 
		List<Nguoidung> list = query.list();
		return list;
	}
	
	@RequestMapping("insert")
	public String insert(ModelMap model, @RequestParam(value="matkhau")String matkhau, @ModelAttribute("nguoidung") Nguoidung nguoidung,
			@ModelAttribute("allnguoidung") List<Nguoidung> nguoidungs, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(matkhau.getBytes());
			BigInteger bigInteger = new BigInteger(1,md.digest());
			matkhau = bigInteger.toString(16);
			nguoidung.setMatkhau(matkhau);
			System.out.println(matkhau);
            nguoidung.setVaitro(false); 
			session.save(nguoidung);
			t.commit();
			model.addAttribute("message", "<p style='color:green'>????ng k?? th??nh c??ng !</p>");
			model.addAttribute("nguoidungs", findAllNguoiDung());

		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "<p style='color:red'>????ng k?? th???t b???i !</p>");
			model.addAttribute("key", nguoidung.getSodt());
			model.addAttribute("table", "kh??ch h??ng");
			model.addAttribute("url", "nguoidung/ThemNguoiDung.htm");
			model.addAttribute("nguoidung", "s??? ??i???n tho???i ho???c email");
			model.addAttribute("nguoidungs", findAllNguoiDung());
//			return "admin/errorInsert";
		} finally {
			session.close();
		}
		return "admin/Login";
	}
}
