/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "SanPham")
public class Sanpham {

    @Id
	@GeneratedValue(strategy =GenerationType.AUTO)
    private int masp;
    private String tensp;
    private Integer gia;
    private String mota;
    private String hinh;
    @ManyToOne
    @JoinColumn(name = "loaiId")
    private Loaisanpham loaisanpham;

private boolean tinhtrang;


    public boolean isTinhtrang() {
	return tinhtrang;
}

public void setTinhtrang(boolean tinhtrang) {
	this.tinhtrang = tinhtrang;
}

	public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public Integer getGia() {
        return gia;
    }

    public void setGia(Integer gia) {
        this.gia = gia;
    }

    public int getMasp() {
		return masp;
	}

	public void setMasp(int masp) {
		this.masp = masp;
	}

	public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getHinh() {
        return hinh;
    }

    public void setHinh(String hinh) {
        this.hinh = hinh;
    }

    public Loaisanpham getLoaisanpham() {
        return loaisanpham;
    }

    public void setLoaisanpham(Loaisanpham loaisanpham) {
        this.loaisanpham = loaisanpham;
    }

}
