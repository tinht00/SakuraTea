package controller;

import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import javax.transaction.Transactional;
import model.Sanpham;
import model.Phanhoi;


@Transactional
@Controller
public class TrangchuController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("admin/Login")
	public String Login() {
		return "admin/Login";
	}
	@RequestMapping("admin/user")
	public String user() {
		return "admin/user";
	}
	
	@RequestMapping("admin/index")
	public String admin() {
		return "admin/index";
	}

	@RequestMapping("admin/errorInsert")
	public String thguoidung() {
		return "admin/errorInsert";
	}

	@RequestMapping("home/index")
	public String TTCN() {
		return "home/index";
	}

	@RequestMapping("Home")
	public String trangchu(ModelMap m) {
		m.addAttribute("Sanpham", new Sanpham());
		m.addAttribute("loadts", findAllTraSua());
		m.addAttribute("loadttc", findAllTraTraiCay());
		m.addAttribute("loaddav", findAllDoAnVat());
		m.addAttribute("loadtp", findAllTopping());
		return "home/TrangChu";
	}

	public List<Sanpham> findAllTraSua() {
		Session session = factory.openSession();
		String hql = "FROM Sanpham sp WHERE sp.loaisanpham Like 'TS' and sp.tinhtrang='0' ORDER BY sp.masp DESC";
		Query q = session.createQuery(hql).setMaxResults(4);
		List<Sanpham> l = q.list();
		return l;
	}

	public List<Sanpham> findAllTraTraiCay() {
		Session session = factory.openSession();
		String hql = "FROM Sanpham sp WHERE sp.loaisanpham Like 'FT' and sp.tinhtrang='0' ORDER BY sp.masp DESC";
		Query q = session.createQuery(hql).setMaxResults(4);
		List<Sanpham> l = q.list();
		return l;
	}

	public List<Sanpham> findAllDoAnVat() {
		Session session = factory.openSession();
		String hql = "FROM Sanpham sp WHERE sp.loaisanpham Like 'AV' and sp.tinhtrang='0' ORDER BY sp.masp DESC";
		Query q = session.createQuery(hql).setMaxResults(4);
		List<Sanpham> l = q.list();
		return l;
	}

	public List<Sanpham> findAllTopping() {
		Session session = factory.openSession();
		String hql = "FROM Sanpham sp WHERE sp.loaisanpham Like 'TP' and sp.tinhtrang='0' ORDER BY sp.masp DESC";
		Query q = session.createQuery(hql).setMaxResults(4);
		List<Sanpham> l = q.list();
		return l;
	}
	
	@RequestMapping("Home/LienHe")
	public String index1(ModelMap m, @ModelAttribute("allPhanhoi") List<Phanhoi> phanhoi) {
		m.addAttribute("phanhoi", new Phanhoi());
		m.addAttribute("phanhois", phanhoi);
		return "home/lienhe";
	}

	@ModelAttribute("allPhanhoi")
	public List<Phanhoi> findAllPhanHoi() {
		Session s = factory.openSession();
		String hql = "From Phanhoi";
		Query query = s.createQuery(hql);
		List<Phanhoi> list = query.list();
		return list;
	}
	
	@RequestMapping("home/insert")
	public String insert(ModelMap model, @ModelAttribute("phanhoi") Phanhoi phanhoi,
			@ModelAttribute("allPhanhoi") List<Phanhoi> phanhois, BindingResult errors) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
            phanhoi.setNgay(new Date());
            phanhoi.setTrangthai(false);
			session.save(phanhoi);
			t.commit();
			model.addAttribute("message", "Thêm mới thành công !");
			model.addAttribute("phanhois", findAllPhanHoi());
			phanhoi.setHoten("");
			phanhoi.setEmail("");
			phanhoi.setNoidung("");
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		return "home/lienhe";
	}
	

}
