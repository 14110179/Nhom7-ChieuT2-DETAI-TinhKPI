package thongtin;


public class ThongTinUser {
	String username;
	String pass;
	String chucvu;
	String hoten;
	String ngaysinh;
	String gioitinh;
	String noisinh;
	String dantoc;
	String socmnd;
	String tongiao;
	String diachi;
	String sdt;
	String email;
	String ghichu;
	public ThongTinUser(String username,String pass,String chucvu,String hoten,String ngaysinh,String gioitinh,String noisinh,String dantoc,String socmnd,String tongiao,String diachi,String sdt,String email,String ghichu)
	{
		this.username=username;
		this.pass=pass;
		this.chucvu=chucvu;
		this.hoten=hoten;
		this.ngaysinh=ngaysinh;
		this.gioitinh=gioitinh;
		this.noisinh=noisinh;
		this.dantoc=dantoc;
		this.socmnd=socmnd;
		this.tongiao=tongiao;
		this.diachi=diachi;
		this.sdt=sdt;
		this.email=email;
		this.ghichu=ghichu;
	}
	public String getUsername()
	{
		return this.username;
	}
	public void setUsername(String username)
	{
		this.username=username;
	}
	public String getChucvu()
	{
		return this.chucvu;
	}
	public void setChucvu(String chucvu)
	{
		this.chucvu=chucvu;
	}
	public String getPass()
	{
		return this.pass;
	}
	public void setPass(String pass)
	{
		this.pass=pass;
	}
	public String getHoten()
	{
		return hoten;
	}
	public void setHoten(String hoten)
	{
		this.hoten=hoten;
	}
	public String getNgaysinh()
	{
		return ngaysinh;
	}
	public void setNgaysinh(String ngaysinh)
	{
		this.ngaysinh=ngaysinh;
	}
	public String getGioitinh()
	{
		return gioitinh;
	}
	public void setGioitinh(String gioitinh)
	{
		this.gioitinh=gioitinh;
	}
	public String getNoisinh()
	{
		return noisinh;
	}
	public void setNoisinh(String noisinh)
	{
		this.noisinh=noisinh;
	}
	public String getDantoc()
	{
		return dantoc;
	}
	public void setDantoc(String dantoc)
	{
		this.dantoc=dantoc;
	}
	public String getSocmnd()
	{
		return socmnd;
	}
	public void setSocmnd(String socmnd)
	{
		this.socmnd=socmnd;
	}
	public String getTongiao()
	{
		return tongiao;
	}
	public void setTongiao(String tongiao)
	{
		this.tongiao=tongiao;
	}
	public String getDiachi()
	{
		return diachi;
	}
	public void setDiachi(String diachi)
	{
		this.diachi=diachi;
	}
	public String getSdt()
	{
		return sdt;
	}
	public void setSdt(String sdt)
	{
		this.sdt=sdt;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email=email;
	}
	public String getGhichu()
	{
		return ghichu;
	}
	public void setGhichu(String ghichu)
	{
		this.ghichu=ghichu;
	}
	
}