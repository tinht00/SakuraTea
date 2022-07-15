package controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.List;

import javax.transaction.Transactional;

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
@RequestMapping("/matkhau/")
public class DoimatkhauController {

	@Autowired
	SessionFactory factory;

	@RequestMapping("DoiMatKhau")
	public String index(ModelMap m, @ModelAttribute("allthongtin") List<Nguoidung> nguoidung) {
		m.addAttribute("tt", new Nguoidung());
		m.addAttribute("ttcn", nguoidung);
		return "admin/DoiMatKhau";
	}

	@ModelAttribute("allthongtin")
	public List<Nguoidung> findAllNguoiDung() {
		Session s = factory.openSession();
		String hql = "From Nguoidung";
		Query query = s.createQuery(hql);
		List<Nguoidung> list = query.list();
		return list;
	}

	@RequestMapping("update")
	public String update(ModelMap model,@RequestParam(value="matkhau")String matkhau, @ModelAttribute("tt") Nguoidung nguoidung,

			@ModelAttribute("allthongtin") List<Nguoidung> nguoidungs, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(matkhau.getBytes());
			BigInteger bigInteger = new BigInteger(1,md.digest());
			matkhau = bigInteger.toString(16);
			nguoidung.setMatkhau(matkhau);
			nguoidung.setVaitro(false);
			session.update(nguoidung);
			t.commit();
			model.addAttribute("message", "Mật khẩu đã được thay đổi!");
			model.addAttribute("ttcn", findAllNguoiDung());

		} catch (Exception e) {
			e.printStackTrace();
			t.rollback();
			model.addAttribute("ttcn", findAllNguoiDung());
			model.addAttribute("message", "Mật khẩu chưa được thay đổi!");
			return "admin/DoiMatKhau";
		} finally {
			session.close();
		}
		return "admin/login";
	}

}
