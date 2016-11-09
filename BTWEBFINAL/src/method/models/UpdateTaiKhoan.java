package method.models;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;

public class UpdateTaiKhoan {
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
}
