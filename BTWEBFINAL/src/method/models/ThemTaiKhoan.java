package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;

public class ThemTaiKhoan {
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
