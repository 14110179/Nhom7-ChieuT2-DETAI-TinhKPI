package thongtin;

public class DSTieuChi {
	String noidung;
	String matieuchi;
	String manhomtc;
	String mabieumau;
	public DSTieuChi(String matieuchi,String noidung,String manhomtc,String mabieumau)
	{
		this.matieuchi=matieuchi;
		this.noidung=noidung;
		this.manhomtc=manhomtc;
		this.mabieumau=mabieumau;
	}
	public void setMaTieuChi(String matieuchi)
	{
		this.matieuchi=matieuchi;
	}
	public String getMaTieuChi()
	{
		return this.matieuchi;
	}
	public void setNoiDung(String noidung)
	{
		this.noidung=noidung;
	}
	public String getNoiDung()
	{
		return this.noidung;
	}
	public void setMaNTC(String manhomtc)
	{
		this.manhomtc=manhomtc;
	}
	public String getMaNTC()
	{
		return this.manhomtc;
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
