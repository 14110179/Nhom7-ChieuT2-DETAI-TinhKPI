package thongtin;

public class DSTieuChi {
	String noidung;
	String matieuchi;
	String manhomtc;
	String mabieumau;
	String diemtoida;
	public DSTieuChi(String matieuchi,String noidung,String manhomtc,String mabieumau,String diemtoida)
	{
		this.matieuchi=matieuchi;
		this.noidung=noidung;
		this.manhomtc=manhomtc;
		this.mabieumau=mabieumau;
		this.diemtoida=diemtoida;
	}
	public void setMaTieuChi(String matieuchi)
	{
		this.matieuchi=matieuchi;
	}
	public String getMaTieuChi()
	{
		return this.matieuchi;
	}
	public void setDiemToiDa(String diemtoida)
	{
		this.diemtoida=diemtoida;
	}
	public String getDiemToiDa()
	{
		return this.diemtoida;
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
