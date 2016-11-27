package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import thongtin.ChuoiKetNoiMYSQL;
import thongtin.DSNhomTC;


public class NhomTieuChiMethod {
	public boolean UpdateNhomTC(String manhomtc,String mabieumau,String noidung)
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
			String sql="update nhomtieuchi set tennhomtc=? where manhomtc=? and mabieumau=?";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(sql);
			pst.setString(1,noidung);
			pst.setString(2,manhomtc);
			pst.setString(3,mabieumau);
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
	public boolean checkMaNhomTieuChi(String manhomtieuchi)
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
			rs=stm.executeQuery("SELECT * FROM nhomtieuchi WHERE manhomtc='"+manhomtieuchi+"'");
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
	public int DemMaNhomTC(String mabieumau)
	{
		int x=0;
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
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdlwebkpi","root","Preciouspro1");
			stm=con.createStatement();		
			rs=stm.executeQuery("SELECT COUNT(manhomtc) AS sotc FROM nhomtieuchi WHERE mabieumau='"+mabieumau+"'");
			if(rs.next())
				x=rs.getInt("sotc");			
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
		return x;
	}
	public boolean DeleteNhomTC(String manhomtc)
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
			String sql1="DELETE FROM tieuchi WHERE manhomtc=?";
			PreparedStatement pst1 = (PreparedStatement) con.prepareStatement(sql1);
			pst1.setString(1,manhomtc);
			pst1.executeUpdate();
			String sql="DELETE FROM nhomtieuchi WHERE manhomtc=?";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(sql);
			pst.setString(1,manhomtc);
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
	public ArrayList<DSNhomTC> getAllNhomTieuChi(String mabieumau)
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ArrayList<DSNhomTC> dsntc=new ArrayList<DSNhomTC>();
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
			rs=stm.executeQuery("select tennhomtc,manhomtc,mabieumau from nhomtieuchi where mabieumau='"+mabieumau+"'");
			
		while(rs.next())
		{
			
			String ntc=rs.getString("tennhomtc");
			String manhomtc=rs.getString("manhomtc");
			
			DSNhomTC item=new DSNhomTC(ntc,manhomtc,mabieumau);
			
			dsntc.add(item);
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
		return dsntc;
	}
	public boolean InsertNhomTieuChi(String tennhomtc,String mabieumau)
	{				
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
		Connection con=null;
		Statement stm=null;	
		try
		{									
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csdlwebkpi","root","Preciouspro1");
			stm=con.createStatement();		
			String s="INSERT INTO nhomtieuchi VALUES(?,?,?)";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(s);
			int x=DemMaNhomTC(mabieumau)+1;
			String manhomtc=mabieumau+"-"+x;
			while(checkMaNhomTieuChi(manhomtc)==true)
			{
				x++;
				manhomtc=mabieumau+"-"+x;
			}
			pst.setString(1, manhomtc);
			pst.setString(2, tennhomtc);
			pst.setString(3, mabieumau);						
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
