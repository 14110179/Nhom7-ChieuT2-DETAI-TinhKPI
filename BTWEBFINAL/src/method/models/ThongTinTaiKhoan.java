package method.models;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
public class ThongTinTaiKhoan {

	public ArrayList<TaiKhoan> getAllAccout()
	{
		ArrayList<TaiKhoan> atk=new ArrayList<TaiKhoan>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
		Connection con=null;
		Statement stm=null;
		ResultSet rs;	
		ResultSet rs2;	
		try
		{
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdlwebkpi","root","Preciouspro1");
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
	public static void main(String[] args)
	{
		ThongTinTaiKhoan t=new ThongTinTaiKhoan();
		ArrayList<TaiKhoan> tk=t.getAllAccout();
		for(TaiKhoan s : tk)
		{
			System.out.println(s.getTenTaiKhoan());
		}
	}
}
