package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import thongtin.ChuoiKetNoiMYSQL;
import thongtin.DanhSachGiangVien;

public class LoadDSGiangVien {
	public ArrayList<DanhSachGiangVien> getAllGVKhoa(String tenkhoa)
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ArrayList<DanhSachGiangVien> dstc=new ArrayList<DanhSachGiangVien>();
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
			rs=stm.executeQuery("select username,hoten from users where khoa='"+tenkhoa+"'");
			
		while(rs.next())
		{
			String username=rs.getString("username");
			String hoten=rs.getString("hoten");
			DanhSachGiangVien item=new DanhSachGiangVien(hoten,username);
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
	
	
	public ArrayList<DanhSachGiangVien> getAllTruongKhoa()
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ArrayList<DanhSachGiangVien> dstc=new ArrayList<DanhSachGiangVien>();
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
			rs=stm.executeQuery("select username,hoten from users where roleid='3'");
			
		while(rs.next())
		{
			String username=rs.getString("username");
			String hoten=rs.getString("hoten");
			DanhSachGiangVien item=new DanhSachGiangVien(hoten,username);
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
	public ArrayList<DanhSachGiangVien> getAllGVvsTBM()
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ArrayList<DanhSachGiangVien> dstc=new ArrayList<DanhSachGiangVien>();
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
			rs=stm.executeQuery("select username,hoten from users where roleid='1' or	 roleid='4'");
			
		while(rs.next())
		{
			String username=rs.getString("username");
			String hoten=rs.getString("hoten");
			DanhSachGiangVien item=new DanhSachGiangVien(hoten,username);
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
	public ArrayList<DanhSachGiangVien> getAllGiangVien()
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ArrayList<DanhSachGiangVien> dstc=new ArrayList<DanhSachGiangVien>();
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
			rs=stm.executeQuery("select username,hoten from users where roleid='1'");
			
		while(rs.next())
		{
			String username=rs.getString("username");
			String hoten=rs.getString("hoten");
			DanhSachGiangVien item=new DanhSachGiangVien(hoten,username);
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
