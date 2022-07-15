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
public class SanphamhomeController {
	@Autowired
	SessionFactory factory;

	  @RequestMapping("chitietsp")
	    public String chitiet() {
	    	return "sanpham/chitietsp";
	    }

	@RequestMapping("Home/ThucUong/TraTraiCay")
	public String traTraiCay(ModelMap m) {
		m.addAttribute("Sanpham", new Sanpham());
		m.addAttribute("loadttc", findAllTraTraiCay());
		return "sanpham/TraTraiCay";
	}
	
	
	@RequestMapping("Home/ThucUong/TraSua")
	public String traSua(ModelMap m) {
		m.addAttribute("Sanpham", new Sanpham());
		m.addAttribute("loadts", findAllTraSua());
		return "sanpham/TraSua";
	}

	
	@RequestMapping("Home/ThucUong/Topping")
	public String topping(ModelMap m) {
		m.addAttribute("Sanpham", new Sanpham());
		m.addAttribute("loadtp", findAllTopping());
		return "sanpham/Topping";
	}

	
	@RequestMapping("Home/DoAnVat")
	public String doAnVat(ModelMap m) {
		m.addAttribute("Sanpham", new Sanpham());
		m.addAttribute("loaddav", findAllDoAnVat());
		return "sanpham/DoAnVat";
	}

	public List<Sanpham> findAllTraSua() {
		Session session = factory.openSession();
		String hql = "FROM Sanpham sp WHERE sp.loaisanpham Like 'TS' and sp.tinhtrang='0'  ORDER BY sp.masp DESC";
		Query q = session.createQuery(hql);
		List<Sanpham> l = q.list();
		return l;
	}

	public List<Sanpham> findAllTraTraiCay() {
		Session session = factory.openSession();
		String hql = "FROM Sanpham sp WHERE sp.loaisanpham Like 'FT' and sp.tinhtrang='0'  ORDER BY sp.masp DESC";
		Query q = session.createQuery(hql);
		List<Sanpham> l = q.list();
		return l;
	}
	
	public List<Sanpham> findAllTTC_TS() {
		Session session = factory.openSession();
		String hql = "FROM Sanpham sp WHERE sp.loaisanpham Like 'TS'  or sp.loaisanpham Like 'FT'  and sp.tinhtrang='0'  ORDER BY sp.loaisanpham DESC";
		Query q = session.createQuery(hql);
		List<Sanpham> l = q.list();
		return l;
	}
	

	public List<Sanpham> findAllDoAnVat() {
		Session session = factory.openSession();
		String hql = "FROM Sanpham sp WHERE sp.loaisanpham Like 'AV' and sp.tinhtrang='0'  ORDER BY sp.masp DESC";
		Query q = session.createQuery(hql);
		List<Sanpham> l = q.list();
		return l;
	}

	public List<Sanpham> findAllTopping() {
		Session session = factory.openSession();
		String hql = "FROM Sanpham sp WHERE sp.loaisanpham Like 'TP' and sp.tinhtrang='0'  ORDER BY sp.masp DESC";
		Query q = session.createQuery(hql);
		List<Sanpham> l = q.list();
		return l;
	}
	
	
	@RequestMapping("SanPham/{masp}")
	public String edit(@PathVariable("masp")int masp,
			ModelMap m,
			@ModelAttribute("Sanpham")Sanpham sp){
		Session s = factory.openSession();
		Sanpham sp1 = (Sanpham) s.get(Sanpham.class, masp);
		
		try {

			sp.setMasp(masp);
			sp.setTensp(sp1.getTensp());
			sp.setHinh(sp1.getHinh());
			sp.setGia(sp1.getGia());
			sp.setLoaisanpham(sp1.getLoaisanpham());
			
			
			m.addAttribute("loadts", findAllTraSua());
			m.addAttribute("loadtp", findAllTopping());
			m.addAttribute("loadttc", findAllTraTraiCay());
			m.addAttribute("loaddav", findAllDoAnVat());
			m.addAttribute("loadttc_ts", findAllTTC_TS());
		} catch (Exception e) {
			// TODO: handle exception
			m.addAttribute("message", e.toString());
		}finally {
			 s.close();
	}
		return "sanpham/chitietsp";
	}
	
	
    @ModelAttribute("allsanpham")
    public List<Sanpham> findAllsanpham() {
        Session s = factory.openSession();
        String hql = "From Sanpham";
        Query query = s.createQuery(hql);
        List<Sanpham> list = query.list();
        return list;
    }
    
    
    
  
}

