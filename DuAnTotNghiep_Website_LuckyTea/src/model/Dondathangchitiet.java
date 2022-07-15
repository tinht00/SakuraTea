package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "DonDatHangCT")
public class Dondathangchitiet {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer madhct;

	private String madh;

	private int masp;

	private String ghichu;
	private int soluong;
	private double tonggia;

	public Integer getMadhct() {
		return madhct;
	}

	public void setMadhct(Integer madhct) {
		this.madhct = madhct;
	}

	public String getMadh() {
		return madh;
	}

	public void setMadh(String madh) {
		this.madh = madh;
	}

	public int getMasp() {
		return masp;
	}

	public void setMasp(int masp) {
		this.masp = masp;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public double getTonggia() {
		return tonggia;
	}

	public void setTonggia(double tonggia) {
		this.tonggia = tonggia;
	}

	public Dondathangchitiet() {
		super();
	}
//	public Dondathangchitiet(Integer madhct, String madh, Sanpham masp, String ghichu, int soluong,
//			double tonggia) {
//		this.madhct = madhct;
//		this.madh = madh;
//		this.masp = masp;
//		this.ghichu = ghichu;
//		this.soluong = soluong;
//		this.tonggia = tonggia;
//	}
//	

}