package controller;

import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Phanhoi;

@Transactional
@Controller
@RequestMapping("/phanhoi/")
public class LienheController {

	@Autowired
	SessionFactory factory;
	@Autowired
	JavaMailSender mailer;

	@RequestMapping("DanhSachPhanHoi")
	public String index(ModelMap m, @ModelAttribute("allPhanhoi") List<Phanhoi> phanhoi) {
		m.addAttribute("phanhoi", new Phanhoi());
		m.addAttribute("phanhois", phanhoi);
		return "admin/DanhSachPhanHoi";
	}

	@ModelAttribute("allPhanhoi")
	public List<Phanhoi> findAllPhanHoi() {
		Session s = factory.openSession();
		String hql = "From Phanhoi";
		Query query = s.createQuery(hql);
		List<Phanhoi> list = query.list();
		return list;
	}

	@RequestMapping("delete/{maph}")
	public String del(ModelMap m, @ModelAttribute("phanhoi") Phanhoi phanhoi) {
		Session s = factory.openSession();
		Transaction t = s.beginTransaction();

		try {

			// delete query
			s.delete(phanhoi);
			t.commit();
			m.addAttribute("message", "Xóa thành công!");
			m.addAttribute("phanhois", findAllPhanHoi());

		} catch (Exception e) {
			// TODO: handle exception
			m.addAttribute("message", "Xóa thất bại!");
			m.addAttribute("phanhois", findAllPhanHoi());
		} finally {
			s.close();
		}
		return "admin/DanhSachPhanHoi";
	}

//	@RequestMapping("update")
//	public String update(ModelMap model, @ModelAttribute("phanhoi") Phanhoi phanhoi) {
//		Session session = factory.openSession();
//		Transaction t = session.beginTransaction();
//		try {
//			session.update(phanhoi);
//			t.commit();
//			model.addAttribute("message", "Cập nhật thành công !");
//			model.addAttribute("phanhois", findAllPhanHoi());
//		} catch (Exception e) {
//			t.rollback();
//			model.addAttribute("message", "Cập nhật thất bại !");
//			model.addAttribute("phanhois", findAllPhanHoi());
//		} finally {
//			session.close();
//		}
//		return "admin/DanhSachPhanHoi";
//	}

	@RequestMapping("send")
	public String send(ModelMap model, @RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("subject") String subject, @RequestParam("body") String body, @ModelAttribute("phanhoi") Phanhoi phanhoi) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			// Tạo mail
			MimeMessage mail = mailer.createMimeMessage();
			// Sử dụng lớp trợ giúp
			MimeMessageHelper helper = new MimeMessageHelper(mail);
			helper.setFrom(from, from);
			helper.setTo(to);
			helper.setReplyTo(from, from);
			helper.setSubject(subject);
			helper.setText(body, true);

			// Gửi mail
			mailer.send(mail);
			//Update
			phanhoi.setTrangthai(true);	
			
			session.update(phanhoi);
			t.commit();
			model.addAttribute("phanhois", findAllPhanHoi());
			model.addAttribute("message", "Gửi email thành công !");
		} catch (Exception ex) {
			t.rollback();
			model.addAttribute("phanhois", findAllPhanHoi());
			ex.printStackTrace();
			model.addAttribute("message", "Gửi email thất bại !"+ex);
		}finally {
			session.close();
		}
		return "admin/DanhSachPhanHoi";
	}
}
