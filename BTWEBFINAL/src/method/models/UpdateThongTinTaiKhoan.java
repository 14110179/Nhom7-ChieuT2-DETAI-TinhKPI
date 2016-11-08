package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;

public class UpdateThongTinTaiKhoan {
	public boolean UpdateTK(ThongTinUser t)
	{
		
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
			String s="UPDATE users SET username=?,pass=?,hoten=?,ngaysinh=?,gioitinh=?,noisinh=?,dantoc=?,socmnd=?,tongiao=?,diachi=?,sdt=?,email=?,ghichu=?,roleid=?";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(s);
			pst.setString(1,t.getUsername());
			pst.setString(2,t.getPass());
			pst.setString(3,t.getHoten());
			pst.setString(4,t.getNgaysinh());
			pst.setString(5,t.getGioitinh());
			pst.setString(6,t.getDantoc());
			pst.setString(7,t.getSocmnd());
			pst.setString(8,t.getTongiao());
			pst.setString(9,t.getDiachi());
			pst.setString(10,t.getSdt());
			pst.setString(11,t.getEmail());
			pst.setString(12,t.getGhichu());
			pst.setInt(13, x);
			
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
