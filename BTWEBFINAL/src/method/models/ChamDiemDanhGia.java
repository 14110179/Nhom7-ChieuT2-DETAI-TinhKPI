package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;

import thongtin.ChuoiKetNoiMYSQL;

public class ChamDiemDanhGia {
	public boolean UpdateDiemSo(String matieuchi,String diemso,String mabieumau,String nguoithuchien)
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

			stm.executeUpdate("update thuchienbieumau set diemtudanhgia='"+diemso+"' where mabieumau='"+mabieumau+"' and nguoithuchien='"+nguoithuchien+"' and matieuchi='"+matieuchi+"'");
			
			
			
			return true;
			
		}catch(SQLException e){
			return false;
			//e.printStackTrace();
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
		
	}
}
