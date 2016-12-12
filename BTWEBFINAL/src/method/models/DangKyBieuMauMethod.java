package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;

import thongtin.ChuoiKetNoiMYSQL;

public class DangKyBieuMauMethod {
	public String LayMaBieuMau(String matieuchi)
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
			rs=stm.executeQuery("select mabieumau from tieuchi where matieuchi='"+matieuchi+"'");
			if(rs.next())
				return rs.getString("mabieumau");
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
		return "";
	}
	public String LayMaNhomTC(String matieuchi)
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
			rs=stm.executeQuery("select manhomtc from tieuchi where matieuchi='"+matieuchi+"'");
			if(rs.next())
				return rs.getString("manhomtc");
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
		return "";
	}
	public boolean CheckDK(String nguoithuchien,String matieuchi)
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
			rs=stm.executeQuery("select * from thuchienbieumau where nguoithuchien='"+nguoithuchien+"' and matieuchi='"+matieuchi+"'");
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
	public boolean DangKy(String nguoithuchien,String matieuchi)
	{				
		if(CheckDK(nguoithuchien,matieuchi)==true)
			return false;
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
			String mabieumau=LayMaBieuMau(matieuchi);
			String manhomtc=LayMaNhomTC(matieuchi);
			con=DriverManager.getConnection(s.getSQL(),s.getName(),s.getPass());
			stm=con.createStatement();
			String sql="insert into thuchienbieumau value(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(sql);
			pst.setString(1,mabieumau);
			pst.setString(2,nguoithuchien);
			pst.setString(3,"Chưa hoàn thành");
			pst.setString(4,matieuchi);
			pst.setString(5,manhomtc);
			pst.setInt(6,0);
			pst.setInt(7,0);
			pst.setInt(8,0);
			pst.setInt(9,0);
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
