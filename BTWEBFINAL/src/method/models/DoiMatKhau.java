package method.models;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class DoiMatKhau {
	public boolean DoiMKhau(String name,String pass,String passnew,String passnew2)
	{
		boolean tmp=false;
		KiemTraDangNhap kt=new KiemTraDangNhap();
		if(kt.checkTaiKhoan(name, pass)==true && passnew.equals(passnew2))
		{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection con=null;
		Statement stm=null;
		int rs;
		
		try
		{
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdlwebkpi","root","Preciouspro1");
			stm=con.createStatement();
			rs=stm.executeUpdate("UPDATE users SET pass='"+passnew+"' WHERE username='"+name+"'");
			if(rs>=1)
				tmp=true;
		}catch(SQLException e){
			e.printStackTrace();
		}
		}
		return tmp;
	}
}
