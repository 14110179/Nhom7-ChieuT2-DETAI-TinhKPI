package thongtin;

public class DSTieuChi {
	String noidung;
	String matieuchi;
	String manhomtc;
	String mabieumau;
	String diemtoida;
	String diemtudanhgia;
	String diemtruongbomon;
	String diemhieutruong;
	String diemtruongkhoa;
	public DSTieuChi(String matieuchi,String noidung,String manhomtc,String mabieumau,String diemtoida)
	{
		this.matieuchi=matieuchi;
		this.noidung=noidung;
		this.manhomtc=manhomtc;
		this.mabieumau=mabieumau;
		this.diemtoida=diemtoida;
	}
	public void setDiemTruongBoMon(String diemtruongbomon)
	{
		this.diemtruongbomon=diemtruongbomon;
	}
	public String getDiemTruongBoMon()
	{
		return this.diemtruongbomon;
	}
	public void setDiemTruongKhoa(String diemtruongkhoa)
	{
		this.diemtruongkhoa=diemtruongkhoa;
	}
	public String getDiemTruongKhoa()
	{
		return this.diemtruongkhoa;
	}
	public void setDiemHieuTruong(String diemhieutruong)
	{
		this.diemhieutruong=diemhieutruong;
	}
	public String getDiemHieuTruong()
	{
		return this.diemhieutruong;
	}
	public void setDiemTuDanhGia(String diemtudanhgia)
	{
		this.diemtudanhgia=diemtudanhgia;
	}
	public String getDiemTuDanhGia()
	{
		return this.diemtudanhgia;
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
