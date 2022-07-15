package model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



public class Items {
	private Sanpham sp=new  Sanpham();
	

	private int gia;
	private  String ghichu;
	
	private int quantity;
	private int stt;
	private int giaTopping;
	private int tongTien;
	
	private static final AtomicInteger count = new AtomicInteger(0); 

//		private static final String alpha = "abcdefghijklmnopqrstuvwxyz"; // a-z
//	    private static final String alphaUpperCase = alpha.toUpperCase(); // A-Z
//	    private static final String digits = "0123456789"; // 0-9	
//		private static final String ALPHA_NUMERIC = alpha + alphaUpperCase + digits;
//		
//	Date date = new Date();
//	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
//	String fmdate = sdf.format(date);
//	String today = fmdate.replace("/", "");
//	public int numberOfCharactor = 6;
//	private static Random rd = new Random();
	private  String maItem ;
	public String getGhichu() {
		return ghichu;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}


	
	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getGiaTopping() {
		return giaTopping;
	}

	public void setGiaTopping(int giaTopping) {
		this.giaTopping = giaTopping;
	}

	public int getTongTien() {
		return tongTien;
	}

	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}

	/*
	 * public Item(int stt, String maItem,Sanpham sp,int gia, int quantity,String
	 * ghichu) { maItem = this.maItem;
	 * 
	 * this.sp = sp; this.ghichu = ghichu; gia = sp.getGia(); this.gia = gia; stt =
	 * count.incrementAndGet(); this.stt = stt; this.quantity = quantity; }
	 */
	
	public Items(int stt, String maItem,Sanpham sp,  int gia, int giaTopping, int quantity, String ghichu,
			int tongTien) {
		
		this.maItem=maItem;
		stt = count.incrementAndGet();
		this.stt = stt;
		this.sp = sp;
		this.gia = gia;
		this.giaTopping = giaTopping;
		this.quantity = quantity;
		this.ghichu = ghichu;
		tongTien = (gia+giaTopping)*quantity;
		this.tongTien = tongTien;
	}

	public Items() {
		super();
	}

//	public String randomAlphaNumeric(int numberOfCharactor) {
//        StringBuilder sb = new StringBuilder();
//        for (int i = 0; i < numberOfCharactor; i++) {
//            int number = randomNumber(0, ALPHA_NUMERIC.length() - 1);
//            char ch = ALPHA_NUMERIC.charAt(number);
//            sb.append(ch);
//        }
//        return sb.toString();
//    }
//	
//	public static int randomNumber(int min, int max) {
//        return rd.nextInt((max - min) + 1) + min;
//    }
	
	public int getStt() {
		return stt;
	}

	public void setStt(int stt) {
		this.stt = stt;
	}

	public Sanpham getSp() {
		return sp;
	}
	public void setSp(Sanpham sp) {
		this.sp = sp;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public static AtomicInteger getCount() {
		return count;
	}
	public String getMaItem() {
		return maItem;
	}

//	public Date getDate() {
//		return date;
//	}
//
//	public void setDate(Date date) {
//		this.date = date;
//	}
//
//	public String getToday() {
//		return today;
//	}
//
//	public void setToday(String today) {
//		this.today = today;
//	}

	public void setMaItem(String maItem) {
	
		this.maItem = maItem;
	}

	@Override
	public String toString() {
		return "Items [masp=" + sp.getMasp() + ", tensp="+ sp.getTensp() +", hinh="+ sp.getHinh()  + ", gia=" + gia + ", ghichu=" + ghichu + ", quantity=" + quantity + ", stt=" + stt
				+ ", giaTopping=" + giaTopping + ", tongTien=" + tongTien + ", maItem=" + maItem + "]";
	}





}