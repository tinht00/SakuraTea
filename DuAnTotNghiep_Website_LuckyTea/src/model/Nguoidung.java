package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NguoiDung")
public class Nguoidung {


    @Id
    @GeneratedValue
    private Integer mand;
    private String matkhau;
    private String hoten;
    private String sodt;
    private String email;
    private String diachi;
    private Boolean vaitro;

    public Integer getMand() {
		return mand;
	}

	public void setMand(Integer mand) {
		this.mand = mand;
	}

	public Boolean getVaitro() {
		return vaitro;
	}

	public void setVaitro(Boolean vaitro) {
		this.vaitro = vaitro;
	}

	public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getSodt() {
        return sodt;
    }

    public void setSodt(String sodt) {
        this.sodt = sodt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }
}
