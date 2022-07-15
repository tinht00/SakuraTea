package controller;

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

import model.Nguoidung;

@Transactional
@Controller
@RequestMapping("/thongtin/")
public class ThongtinController {

	@Autowired
	SessionFactory factory;

	@RequestMapping("ThongTinCaNhan")
	public String index(ModelMap m, @ModelAttribute("allthongtin") List<Nguoidung> nguoidung) {
		m.addAttribute("tt", new Nguoidung());
		m.addAttribute("ttcn", nguoidung);
		return "admin/ThongTinCaNhan";
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
	public String update(ModelMap model, @ModelAttribute("tt") Nguoidung nguoidung,
			@ModelAttribute("allthongtin") List<Nguoidung> nguoidungs, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			nguoidung.setVaitro(false);
			session.update(nguoidung);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công xin mời quý khách đăng nhập lại để xem thông tin mình đã cập nhật!");
			model.addAttribute("ttcn", findAllNguoiDung());

		} catch (Exception e) {
			t.rollback();
			e.printStackTrace();
			model.addAttribute("ttcn", findAllNguoiDung());
			model.addAttribute("message", "Cập nhật thông tin thất bại !!");
			return "admin/ThongTinCaNhan";
		} finally {
			session.close();
		}
		return "admin/Login";
	}

}
