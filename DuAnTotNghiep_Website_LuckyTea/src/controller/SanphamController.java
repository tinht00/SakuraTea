/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
import model.Loaisanpham;
import model.Sanpham;

/**
 *
 * @author Admin
 */
@Transactional
@Controller
@RequestMapping("/sanpham/")
public class SanphamController {

    @Autowired
    SessionFactory factory;

    @RequestMapping("DanhSachSanPham")
    public String index(ModelMap m, @ModelAttribute("allsanpham") List<Sanpham> sanpham) {
        m.addAttribute("sanpham", new Sanpham());
        m.addAttribute("sanphams", sanpham);
        return "admin/DanhSachSanPham";
    }

    @RequestMapping("ThemSanPham")
    public String index1(ModelMap m, @ModelAttribute("allsanpham") List<Sanpham> sanpham) {
        m.addAttribute("sanpham", new Sanpham());
        m.addAttribute("sanphams", sanpham);
        return "admin/ThemSanPham";
    }

    @ModelAttribute("allsanpham")
    public List<Sanpham> findAllsanpham() {
        Session s = factory.openSession();
        String hql = "From Sanpham";
        Query query = s.createQuery(hql);
        List<Sanpham> list = query.list();
        return list;
    }

    @ModelAttribute("loaisanphams")
    public List<Loaisanpham> getLoaiSPs() {
        Session session = factory.getCurrentSession();
        String hql = "FROM Loaisanpham";
        Query query = session.createQuery(hql);
        List<Loaisanpham> list = query.list();
        return list;
    }


    @RequestMapping("insert")
    public String insert(ModelMap model, @ModelAttribute("sanpham") Sanpham sanpham,
            @ModelAttribute("allsanpham") List<Sanpham> sanphams, BindingResult errors) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {

            session.save(sanpham);
            t.commit();
            model.addAttribute("message", "Thêm mới thành công !");
            model.addAttribute("sanphams", findAllsanpham());

        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Thêm mới thất bại !" + e.toString());
            model.addAttribute("key", sanpham.getMasp());
            model.addAttribute("table", "Sản phẩm");
            model.addAttribute("url", "sanpham/ThemSanPham.htm");
            model.addAttribute("sanpham", "Mã sản phẩm");
            model.addAttribute("nguoidungs", findAllsanpham());
            return "admin/errorInsert";
        } finally {
            session.close();
        }
        return "admin/DanhSachSanPham";
    }

    @RequestMapping("delete")
    public String del(ModelMap model, @ModelAttribute("sanpham") Sanpham sanpham,
            @ModelAttribute("allsanpham") List<Sanpham> sanphams, BindingResult errors) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {

            session.delete(sanpham);
            t.commit();
            model.addAttribute("message", "Thêm mới thành công !");
            model.addAttribute("sanphams", findAllsanpham());

        } catch (Exception e) {
            t.rollback();
            model.addAttribute("nguoidungs", findAllsanpham());
            return "admin/errorInsert";
        } finally {
            session.close();
        }
        return "admin/DanhSachSanPham";
    }

    @RequestMapping("update")
    public String update(ModelMap model, @ModelAttribute("sanpham") Sanpham sanpham,
            @ModelAttribute("allsanpham") List<Sanpham> sanphams, BindingResult errors) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {

            session.update(sanpham);
            t.commit();
            model.addAttribute("message", "Thêm mới thành công !");
            model.addAttribute("sanphams", findAllsanpham());

        } catch (Exception e) {
            t.rollback();
            model.addAttribute("nguoidungs", findAllsanpham());
            return "admin/errorInsert";
        } finally {
            session.close();
        }
        return "admin/DanhSachSanPham";
    }
}
