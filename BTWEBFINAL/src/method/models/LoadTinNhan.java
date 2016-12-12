package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import thongtin.ChuoiKetNoiMYSQL;
import thongtin.DSTinNhan;
import thongtin.DanhSachGiangVien;

public class LoadTinNhan {
	public String LayTenUser(String mauser)
	{
		String ss="";
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
		Connection con=null;
		Statement stm=null;
		ResultSet rs;	
		try
		{
			con=DriverManager.getConnection(s.getSQL(),s.getName(),s.getPass());
			stm=con.createStatement();
			rs=stm.executeQuery("select hoten from users where username='"+mauser+"'");
			
		if(rs.next())
			ss=rs.getString("hoten");
		}catch(SQLException e){
			e.printStackTrace();
		}	
		finally
		{
			
				try {
					con.close();
					stm.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
		}
		return ss;
	}
	public DSTinNhan getThongBao(String mathongbao)
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		DSTinNhan dstc=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
		Connection con=null;
		Statement stm=null;
		ResultSet rs;	
		try
		{
			con=DriverManager.getConnection(s.getSQL(),s.getName(),s.getPass());
			stm=con.createStatement();
			rs=stm.executeQuery("select * from thongbao where mathongbao='"+mathongbao+"'");
			
		while(rs.next())
		{
			String mathongbao2=rs.getString("mathongbao");
			String tenthongbao=rs.getString("tenthongbao");
			String noidung=rs.getString("noidung");
			String nguoigui=LayTenUser(rs.getString("nguoigui"));
			SimpleDateFormat dinhdangTime=new SimpleDateFormat("dd-MM-yyyy");
			String ngaygui=rs.getDate("thoigian").toString();
			try {
				dinhdangTime.parse(ngaygui);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String nguoinhan2=LayTenUser(rs.getString("nguoinhan"));
			String trangthai=LayTenUser(rs.getString("trangthai"));
			dstc=new DSTinNhan(mathongbao2,tenthongbao,noidung,nguoigui,ngaygui,nguoinhan2,trangthai);
			
		}

		}catch(SQLException e){
			e.printStackTrace();
		}	
		finally
		{
			
				try {
					con.close();
					stm.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
		}
		return dstc;
	}
	public ArrayList<DSTinNhan> getAllTinNhan(String nguoinhan)
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ArrayList<DSTinNhan> dstc=new ArrayList<DSTinNhan>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
		Connection con=null;
		Statement stm=null;
		ResultSet rs;	
		try
		{
			con=DriverManager.getConnection(s.getSQL(),s.getName(),s.getPass());
			stm=con.createStatement();
			rs=stm.executeQuery("select * from thongbao where nguoinhan='"+nguoinhan+"'");
			
		while(rs.next())
		{
			String mathongbao=rs.getString("mathongbao");
			String tenthongbao=rs.getString("tenthongbao");
			String noidung=rs.getString("noidung");
			String nguoigui=LayTenUser(rs.getString("nguoigui"));
			SimpleDateFormat dinhdangTime=new SimpleDateFormat("dd-MM-yyyy");
			String ngaygui=rs.getDate("thoigian").toString();
			try {
				dinhdangTime.parse(ngaygui);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String nguoinhan2=LayTenUser(rs.getString("nguoinhan"));
			String trangthai=LayTenUser(rs.getString("trangthai"));
			DSTinNhan item=new DSTinNhan(mathongbao,tenthongbao,noidung,nguoigui,ngaygui,nguoinhan2,trangthai);
			dstc.add(item);
		}

		}catch(SQLException e){
			e.printStackTrace();
		}	
		finally
		{
			
				try {
					con.close();
					stm.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
		}
		return dstc;
	}
}
