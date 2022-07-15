/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Collection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "LoaiSanPham")
public class Loaisanpham {

    @Id
    private String maloai;
    private String tenloai;
    @OneToMany(mappedBy = "loaisanpham", fetch = FetchType.EAGER)
    private Collection<Sanpham> sanpham;

    public String getMaloai() {
        return maloai;
    }

    public void setMaloai(String maloai) {
        this.maloai = maloai;
    }

    public String getTenloai() {
        return tenloai;
    }

    public void setTenloai(String tenloai) {
        this.tenloai = tenloai;
    }

    public Collection<Sanpham> getSanpham() {
        return sanpham;
    }

    public void setSanpham(Collection<Sanpham> sanpham) {
        this.sanpham = sanpham;
    }

}
