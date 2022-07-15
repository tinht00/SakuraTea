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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Dondathang;

@Transactional
@Controller
@RequestMapping("/dondathang/")
public class DondathangController {

	@Autowired
	SessionFactory factory;

	@RequestMapping("DanhSachDonDatHang")
	public String index(ModelMap m, @ModelAttribute("allDondathang") List<Dondathang> dondathang) {
		m.addAttribute("dondathang", new Dondathang());
		m.addAttribute("dondathangs", dondathang);
		return "admin/DanhSachDonDatHang";
	}

	@ModelAttribute("allDondathang")
	public List<Dondathang> findAllDondathang() {
		Session s = factory.openSession();
		String hql = "From Dondathang";
		Query query = s.createQuery(hql);
		List<Dondathang> list = query.list();
		return list;
	}

	@RequestMapping("delete/{madh}")
	public String del(ModelMap m, @ModelAttribute("dondathang") Dondathang dondathang) {
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();

		try {

			// delete query
			s.delete(dondathang);
			t.commit();
			m.addAttribute("message", "Xóa thành công!");
			m.addAttribute("dondathangs", findAllDondathang());

		} catch (Exception e) {
			// TODO: handle exception
			m.addAttribute("message", "Xóa thất bại!");
			m.addAttribute("dondathangs", findAllDondathang());
		} finally {
			s.close();
		}
		return "admin/DanhSachDonDatHang";
	}

	@RequestMapping("update")
	public String update(ModelMap model, @ModelAttribute("dondathang") Dondathang dondathang) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.update(dondathang);
			t.commit();
			model.addAttribute("message", "Cập nhật thành công !");
			model.addAttribute("dondathangs", findAllDondathang());
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Cập nhật thất bại !");
			model.addAttribute("dondathangs", findAllDondathang());
		} finally {
			session.close();
		}
		return "admin/DanhSachDonDatHang";
	}
}
