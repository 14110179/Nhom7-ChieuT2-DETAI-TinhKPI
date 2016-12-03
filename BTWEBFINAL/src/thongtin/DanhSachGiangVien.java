package thongtin;

public class DanhSachGiangVien {
	String tengv;
	String magv;
	public DanhSachGiangVien(String tengv,String magv)
	{
		this.tengv=tengv;
		this.magv=magv;
	}
	public String getTenGV()
	{
		return tengv;
	}
	public void setTenGV(String tengv)
	{
		this.tengv=tengv;
	}
	public String getMaGV()
	{
		return magv;
	}
	public void setMaGV(String magv)
	{
		this.magv=magv;
	}
}
