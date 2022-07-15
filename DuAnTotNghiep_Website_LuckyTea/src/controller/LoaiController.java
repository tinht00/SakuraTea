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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import model.Loaisanpham;

@Transactional
@Controller
@RequestMapping("/loai/")
public class LoaiController {

	@Autowired
	SessionFactory factory;

	@RequestMapping("DanhSachLoaiSanPham")
	public String index(ModelMap m, @ModelAttribute("allLoaiSP") List<Loaisanpham> loaisp) {
		m.addAttribute("loaisp", new Loaisanpham());
		m.addAttribute("loaisps", loaisp);
		return "admin/DanhSachLoaiSanPham";
	}

	@RequestMapping("ThemLoaiSanPham")
	public String index1(ModelMap m, @ModelAttribute("allLoaiSP") List<Loaisanpham> loaisp) {
		m.addAttribute("loaisp", new Loaisanpham());
		m.addAttribute("loaisps", loaisp);
		return "admin/ThemLoaiSanPham";
	}

	@ModelAttribute("allLoaiSP")
	public List<Loaisanpham> findAllLoaiSP() {
		Session s = factory.openSession();
		String hql = "From Loaisanpham";
		Query query = s.createQuery(hql);
		List<Loaisanpham> list = query.list();
		return list;
	}
	
	 @RequestMapping("insert")
	    public String insert(ModelMap model,
	            @ModelAttribute("loaisp") Loaisanpham loaisp,
	            @ModelAttribute("allLoaiSP") List<Loaisanpham> loaisps,
	            BindingResult errors) {
	        Session session = factory.openSession();
	        Transaction t = session.beginTransaction();
	        try {

	            session.save(loaisp);
	            t.commit();
	            model.addAttribute("message", "Thêm mới thành công !");
	            model.addAttribute("loaisps", findAllLoaiSP());

	        } catch (Exception e) {
	            t.rollback();
	            model.addAttribute("key", loaisp.getTenloai());
	            model.addAttribute("table", "loại sản phẩm");
	            model.addAttribute("url", "loai/ThemLoaiSanPham.htm");
	            model.addAttribute("loaisp", "tên đăng nhập");
	            model.addAttribute("loaisps", findAllLoaiSP());
	            return "admin/errorInsert";
	        } finally {
	            session.close();
	        }
	        return "admin/DanhSachLoaiSanPham";
	    }

	    @RequestMapping("delete/{maloai}")
	    public String del(ModelMap m,
	            @ModelAttribute("loaisp") Loaisanpham loaisp) {
	        Session s = factory.openSession();
	        Transaction t = s.beginTransaction();

	        try {

	            //delete query
	            s.delete(loaisp);
	            t.commit();
	            loaisp.setTenloai("");
	            m.addAttribute("message", "Xóa thành công!");
	            m.addAttribute("loaisps", findAllLoaiSP());

	        } catch (Exception e) {
	            // TODO: handle exception
	            m.addAttribute("message", "Xóa thất bại!");
	            m.addAttribute("loaisps", findAllLoaiSP());
	        } finally {
	            s.close();
	        }
	        return "admin/DanhSachLoaiSanPham";
	    }

	    @RequestMapping("update")
	    public String update(ModelMap model,
	            @ModelAttribute("loaisp") Loaisanpham loaisp
	    ) {
	        Session session = factory.openSession();
	        Transaction t = session.beginTransaction();
	        try {
	            session.update(loaisp);
	            t.commit();
	            model.addAttribute("message", "Cập nhật thành công !");
	            model.addAttribute("loaisps", findAllLoaiSP());
	        } catch (Exception e) {
	            t.rollback();
	            model.addAttribute("message", "Cập nhật thất bại !");
	            model.addAttribute("loaisps", findAllLoaiSP());
	        } finally {
	            session.close();
	        }
			return "admin/DanhSachLoaiSanPham";
	    }

}
