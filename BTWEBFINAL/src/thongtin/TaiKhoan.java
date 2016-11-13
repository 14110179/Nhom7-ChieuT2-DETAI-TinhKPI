package thongtin;

public class TaiKhoan {
	private String tentaikhoan;
	private String matkhau;
	private String chucvu;
	public TaiKhoan(String tentaikhoan,String matkhau,String chucvu)
	{
		this.tentaikhoan=tentaikhoan;
		this.matkhau=matkhau;
		this.chucvu=chucvu;
	}
	public String getTenTaiKhoan()
	{
		return tentaikhoan;
	}
	public void setTenTaiKhoan(String tentaikhoan)
	{
		this.tentaikhoan=tentaikhoan;
	}
	public String getMatKhau()
	{
		return matkhau;
	}
	public void setMatKhau(String matkhau)
	{
		this.matkhau=matkhau;
	}
	public String getChucVu()
	{
		return chucvu;
	}
	public void setChucVu(String chucvu)
	{
		this.chucvu=chucvu;
	}
}
