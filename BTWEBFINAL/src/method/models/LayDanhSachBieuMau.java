package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import thongtin.ChuoiKetNoiMYSQL;
import thongtin.DanhSachBieuMau;

public class LayDanhSachBieuMau {
	public ArrayList<DanhSachBieuMau> getAllBieuMau()
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ArrayList<DanhSachBieuMau> dsbm=new ArrayList<DanhSachBieuMau>();
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
			rs=stm.executeQuery("select mabieumau from bieumau");
			
		while(rs.next())
		{
			
			String mabieumau=rs.getString("mabieumau");
			DanhSachBieuMau bm=new DanhSachBieuMau(mabieumau);
			dsbm.add(bm);
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
		return dsbm;
	}
}
