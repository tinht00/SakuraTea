package controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Nguoidung;
//import sun.launcher.resources.launcher;

@Transactional
@Controller
public class LoginController {
	@Autowired
	SessionFactory factory;
//	String ma, ten;

	@RequestMapping("login")
	public String showLogin(ModelMap model) {
		model.addAttribute("nguoidung", new Nguoidung());
		return "admin/Login";
	}

	@RequestMapping("login_form")
	public String loginForm(HttpServletRequest request, Nguoidung user, ModelMap m, HttpSession session,
			ModelMap model) throws NoSuchAlgorithmException {
		String id = request.getParameter("sodt");
		String pw = request.getParameter("matkhau");
		MessageDigest alg = MessageDigest.getInstance("SHA-256");
		alg.reset();
		alg.update(pw.getBytes());
		BigInteger bigInteger = new BigInteger(1,alg.digest());
		pw =  bigInteger.toString(16);
		boolean check = this.check(id, pw);
		if (id == null && pw == null) {
			request.setAttribute("message", "<p style='color:red'>Sai thông tin đăng nhập</p>");
			return "admin/Login";
		} else if (check) {
			Session ss = factory.openSession();
			String sql = "from Nguoidung where sodt = '" + id + "' and matkhau = '" + pw + "'";
			Query query = ss.createQuery(sql);
			List<Nguoidung> list = query.list();
//			System.out.print(list.get(0).getVaitro());
			if(list.get(0).getVaitro()==true) {
				 request.getSession().setAttribute("user", user);
				 session.setAttribute("hoten", list.get(0).getHoten());
				 session.setAttribute("DAUHIEU", "dn");
				return "admin/index";
			}else if(list.get(0).getVaitro()==false){
				session.setAttribute("DAUHIEU", "dn");
				model.addAttribute("", check);
				session.setAttribute("mand", list.get(0).getMand());
				session.setAttribute("matkhau", list.get(0).getMatkhau());
				session.setAttribute("hoten", list.get(0).getHoten());
				session.setAttribute("sodt", list.get(0).getSodt());
				session.setAttribute("email", list.get(0).getEmail());
				session.setAttribute("diachi", list.get(0).getDiachi());
				
				return "redirect:/Home.htm";
			}

			session.setAttribute("sodt", id);
			
		}
		request.setAttribute("message", "<p style='color:red'>Sai thông tin đăng nhập</p>");
		return "admin/Login";
	}

	public boolean check(String sodt, String matkhau) {
		List<Nguoidung> list = null;
		Session session = factory.openSession();
		String sql = "from Nguoidung where sodt = '" + sodt + "' and matkhau = '" + matkhau + "'";
		Query query = session.createQuery(sql);
		list = query.list();

		if (list.size() > 0) {
			// lay tu query > username, ten
			// Cach de laay query trong spring mvc
			return true;
		}
		return false;
	}

	@RequestMapping("HomeLogout")
	public String logout(HttpSession ss) {
		ss.removeAttribute("user");
		ss.removeAttribute("hoten");
		ss.removeAttribute("DAUHIEU");
		ss.removeAttribute("sodt");
		return "redirect:/Home.htm";
	}
}
