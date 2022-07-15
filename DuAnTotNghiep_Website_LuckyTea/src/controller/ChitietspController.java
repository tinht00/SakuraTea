package controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Sanpham;


@Transactional
@Controller
public class ChitietspController {
//
//	@Autowired
//	SessionFactory factory;
	
//	@RequestMapping("Home/SanPham/ChiTiet")
//    public String index(ModelMap m, @ModelAttribute("allsanpham") List<Sanpham> sanpham) {
//        m.addAttribute("sanpham", new Sanpham());
//        m.addAttribute("sanphams", sanpham);
//        return "admin/DanhSachSanPham";
//    }
	
	
	/*
	@RequestMapping("SanPham/ChiTiet/{masp}")
	public String edit(@PathVariable("masp")String masp,
			ModelMap m,
			@ModelAttribute("Sanpham")Sanpham sp){
		Session s = factory.openSession();
		Sanpham sp1 = (Sanpham) s.get(Sanpham.class, masp);
		
		try {
			//tiêm thông tin vừa tiềm dc từ tks vào tk
			sp.setMasp(masp);
			sp.setTensp(sp1.getTensp());
			sp.setHinh(sp1.getHinh());
			sp.setGia(sp1.getGia());
			sp.setMota(sp1.getMota());
			sp.setLoaisanpham(sp1.getLoaisanpham());
			
			
			m.addAttribute("sps", findAllsanpham());
			
		} catch (Exception e) {
			// TODO: handle exception
			m.addAttribute("message", e.toString());
		}finally {
			 s.close();
	}
		return "sanpham/ChiTietSanPham";
	}
	
	 @ModelAttribute("allsanpham")
	    public List<Sanpham> findAllsanpham() {
	        Session s = factory.openSession();
	        String hql = "From Sanpham";
	        Query query = s.createQuery(hql);
	        List<Sanpham> list = query.list();
	        return list;
	    }
	    */
}
