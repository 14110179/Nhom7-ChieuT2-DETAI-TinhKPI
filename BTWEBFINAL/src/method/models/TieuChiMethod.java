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
import thongtin.DSTieuChi;

public class TieuChiMethod {
	public boolean UpdateNhomTC(String matieuchi,String noidung)
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
			String sql="update tieuchi set tentieuchi=? where matieuchi=?";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(sql);
			pst.setString(1,noidung);
			pst.setString(2,matieuchi);			
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
	public boolean checkMaTieuChi(String matieuchi)
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
			rs=stm.executeQuery("SELECT * FROM tieuchi WHERE matieuchi='"+matieuchi+"'");
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
	public int DemMaTC(String manhomtieuchi)
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
			rs=stm.executeQuery("SELECT COUNT(matieuchi) AS sotc FROM tieuchi WHERE manhomtc='"+manhomtieuchi+"'");
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
	public boolean InsertTieuChi(String tentieuchi,String manhomtc,String mabieumau)
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
			String s="INSERT INTO tieuchi VALUES(?,?,?,?,?)";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(s);
			int x=DemMaTC(manhomtc)+1;
			String matc=manhomtc+"-"+x;
			while(checkMaTieuChi(matc)==true)
			{
				x++;
				matc=manhomtc+"-"+x;
			}
			pst.setString(1, matc);
			pst.setString(2, tentieuchi);
			pst.setString(3, manhomtc);	
			pst.setString(4, mabieumau);
			pst.setInt(5, 10);
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
	public ArrayList<DSTieuChi> getAllTieuChi2(String manhomtc,String mabieumau,String nguoithuchien)
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ArrayList<DSTieuChi> dstc=new ArrayList<DSTieuChi>();
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
			rs=stm.executeQuery("select tieuchi.matieuchi,tieuchi.tentieuchi,tieuchi.manhomtc,tieuchi.mabieumau,tieuchi.diemtoida from thuchienbieumau , tieuchi where thuchienbieumau.matieuchi=tieuchi.matieuchi and thuchienbieumau.nguoithuchien='"+nguoithuchien+"' and thuchienbieumau.mabieumau='"+mabieumau+"' and thuchienbieumau.manhomtieuchi='"+manhomtc+"'");
			
		while(rs.next())
		{
			String matc=rs.getString("matieuchi");
			String noidung=rs.getString("tentieuchi");
			String manhomtieuchi=rs.getString("manhomtc");
			String mabm=rs.getString("mabieumau");
			int diemtoida=rs.getInt("diemtoida");
			DSTieuChi item=new DSTieuChi(matc,noidung,manhomtieuchi,mabm,String.valueOf(diemtoida));						
			dstc.add(item);
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
		return dstc;
	}
	public ArrayList<DSTieuChi> getAllTieuChi(String manhomtc)
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ArrayList<DSTieuChi> dstc=new ArrayList<DSTieuChi>();
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
			rs=stm.executeQuery("select matieuchi,tentieuchi,manhomtc,mabieumau,diemtoida from tieuchi where manhomtc='"+manhomtc+"'");
			
		while(rs.next())
		{
			String matc=rs.getString("matieuchi");
			String noidung=rs.getString("tentieuchi");
			String manhomtieuchi=rs.getString("manhomtc");
			String mabieumau=rs.getString("mabieumau");
			int diemtoida=rs.getInt("diemtoida");
			DSTieuChi item=new DSTieuChi(matc,noidung,manhomtieuchi,mabieumau,String.valueOf(diemtoida));						
			dstc.add(item);
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
		return dstc;
	}
	public boolean DeleteTieuChi(String matieuchi)
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
			String sql="DELETE FROM tieuchi WHERE matieuchi=?";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(sql);
			pst.setString(1,matieuchi);
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
