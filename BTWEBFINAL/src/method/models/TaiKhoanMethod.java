package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import thongtin.ChuoiKetNoiMYSQL;
import thongtin.TaiKhoan;
import thongtin.ThongTinUser;

public class TaiKhoanMethod {
	public ArrayList<TaiKhoan> getAllAccout()
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ArrayList<TaiKhoan> atk=new ArrayList<TaiKhoan>();
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
			rs=stm.executeQuery("select username,pass,rolename from users,role where users.roleid=role.roleid");
			
		while(rs.next())
		{
			
			String tentaikhoan=rs.getString("username");
			String matkhau=rs.getString("pass");
			String chucvu=rs.getString("rolename");
			TaiKhoan tk=new TaiKhoan(tentaikhoan,matkhau,chucvu);
			atk.add(tk);
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
		return atk;
	}
	public boolean UpdateTK(ThongTinUser t)
	{		
		ChuoiKetNoiMYSQL ss=new ChuoiKetNoiMYSQL();
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
			int x=1;			
			con=DriverManager.getConnection(ss.getSQL(),ss.getName(),ss.getPass());
			stm=con.createStatement();
			rs=stm.executeQuery("SELECT roleid FROM role WHERE rolename='"+t.getChucvu()+"'");
			if(rs.next())
				x=rs.getInt("roleid");
			String s="UPDATE users SET pass=?,hoten=?,ngaysinh=?,gioitinh=?,noisinh=?,dantoc=?,socmnd=?,tongiao=?,diachi=?,sdt=?,email=?,ghichu=?,roleid=? WHERE username=?";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(s);									
			pst.setString(1,t.getPass());
			pst.setString(2,t.getHoten());
			pst.setString(3,t.getNgaysinh());		
			pst.setString(5,t.getNoisinh());
			pst.setString(6,t.getDantoc());
			pst.setString(7,t.getSocmnd());
			pst.setString(8,t.getTongiao());
			pst.setString(9,t.getDiachi());
			pst.setString(10,t.getSdt());
			pst.setString(11,t.getEmail());
			pst.setString(12,t.getGhichu());
			pst.setInt(13, x);
			pst.setString(14, t.getUsername());
			int i=0;
			if(t.getGioitinh().equals("Nam"))
				i=1;
			pst.setInt(4, i);
			
			return pst.executeUpdate()>0;
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
			
		return false;
	}
	public boolean DeleteTKhoan(String username)
	{		
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
		Connection con=null;
		Statement stm=null;
		
		try
		{
					
			con=DriverManager.getConnection(s.getSQL(),s.getName(),s.getPass());
			stm=con.createStatement();
			String sql="DELETE FROM users WHERE username=?";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(sql);
			pst.setString(1,username);
			return pst.executeUpdate()>0;						
					
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
			
		return false;
	}
	public boolean checkUsername(String username)
	{
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
			rs=stm.executeQuery("SELECT * FROM users WHERE username='"+username+"'");
			if(rs.next())
				return true;
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
		return false;
	}
	public boolean InsertTK(ThongTinUser t)
	{		
		if(checkUsername(t.getUsername()))
			return false;
		if(t.getUsername()==null||t.getUsername()=="")
			return false;
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
			
			int x=1;			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdlwebkpi","root","Preciouspro1");
			stm=con.createStatement();
			rs=stm.executeQuery("SELECT roleid FROM role WHERE rolename='"+t.getChucvu()+"'");
			if(rs.next())
				x=rs.getInt("roleid");
			String s="INSERT INTO users VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(s);	
			if(t.getPass()==null||t.getPass()=="")
				pst.setString(2,"123456");
			else
				pst.setString(2,t.getPass());
			pst.setString(3,t.getHoten());			
			if(t.getNgaysinh()==null||t.getNgaysinh()=="")
				pst.setString(4,"1990-01-01");
			else
				pst.setString(4,t.getNgaysinh());		
			pst.setString(6,t.getNoisinh());
			pst.setString(7,t.getDantoc());
			pst.setString(8,t.getSocmnd());
			pst.setString(9,t.getTongiao());
			pst.setString(10,t.getDiachi());
			pst.setString(11,t.getSdt());
			pst.setString(12,t.getEmail());
			pst.setString(13,t.getGhichu());
			pst.setInt(14, x);
			pst.setString(1, t.getUsername());
			int i=0;
			if(t.getGioitinh().equals("Nam"))
				i=1;
			pst.setInt(5, i);
			
			return pst.executeUpdate()>0;
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
			
		return false;
	}
}
