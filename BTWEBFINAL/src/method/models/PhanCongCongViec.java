package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;

import thongtin.ChuoiKetNoiMYSQL;

public class PhanCongCongViec {
	public boolean checkMaThongBao(String mathongbao)
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
			rs=stm.executeQuery("SELECT * FROM thongbao WHERE mathongbao='"+mathongbao+"'");
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
	public int DemMaThongBao()
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
			rs=stm.executeQuery("SELECT COUNT(mathongbao) AS sotc FROM thongbao");
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
	
	
	public boolean GuiThongBao(String tenthongbao,String noidung,String nguoigui,String ngaygui,String nguoinhan,String trangthai)
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
			String s="INSERT INTO thongbao VALUES(?,?,?,?,?,?,?)";
			PreparedStatement pst = (PreparedStatement) con.prepareStatement(s);
			int x=DemMaThongBao()+1;
			String mathongbao="MaTB-"+x;
			while(checkMaThongBao(mathongbao)==true)
			{
				x++;
				mathongbao="MaTB-"+x;
			}
			pst.setString(1, mathongbao);
			pst.setString(2, tenthongbao);
			pst.setString(3, noidung);	
			pst.setString(4, nguoigui);
			pst.setString(5, ngaygui);
			pst.setString(6, nguoinhan);
			pst.setString(7, trangthai);
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
