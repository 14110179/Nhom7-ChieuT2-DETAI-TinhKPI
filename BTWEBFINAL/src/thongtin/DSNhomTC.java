package thongtin;

public class DSNhomTC {
	String noidung;
	String mantc;
	String mabieumau;
	public DSNhomTC(String noidung,String mantc,String mabieumau)
	{
		this.noidung=noidung;
		this.mantc=mantc;
		this.mabieumau=mabieumau;
	}
	public void setNoiDung(String noidung)
	{
		this.noidung=noidung;
	}
	public String getNoiDung()
	{
		return this.noidung;
	}
	public void setMaNTC(String mantc)
	{
		this.mantc=mantc;
	}
	public String getMaNTC()
	{
		return this.mantc;
	}
	public void setMaBieuMau(String mabieumau)
	{
		this.mabieumau=mabieumau;
	}
	public String getMaBieuMau()
	{
		return this.mabieumau;
	}
}
