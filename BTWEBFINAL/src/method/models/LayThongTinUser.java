package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import thongtin.ChuoiKetNoiMYSQL;
import thongtin.ThongTinUser;

public class LayThongTinUser {
	public ThongTinUser LayThongTin(String username,String password) 
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ThongTinUser tt=null;
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
			rs=stm.executeQuery("SELECT * FROM users WHERE username='"+username+"' AND pass='"+password+"'");
				String usernamegv="";
				String hotengv="";
				String dantocgv="";
				String diachigv="";
				String emailgv="";
				int gioitinhgv=0;
				//@SuppressWarnings("unused")
				Date ngaysinhgv=new Date();			
				String noisinhgv="";
				String sdtgv="";
				String socmndgv="";
				String tongiaogv="";
				String ghichugv="";
				String khoagv="";
				
				while(rs.next())		
				{								
					if(rs.getDate("ngaysinh")==null)
					{
						SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
						String dateInString = "01/01/1990";
						try {
							ngaysinhgv=formatter.parse(dateInString);
							formatter.format(ngaysinhgv);
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					else
					{

						ngaysinhgv=rs.getDate("ngaysinh");

						
					}
					khoagv=rs.getString("khoa");
					
					usernamegv=(rs.getString("username"));
					
					hotengv=(rs.getString("hoten"));
					
					dantocgv=(rs.getString("dantoc"));
				
					diachigv=(rs.getString("diachi"));
					
					emailgv=(rs.getString("email"));
					
					gioitinhgv=rs.getInt("gioitinh");	
				
					noisinhgv=(rs.getString("noisinh"));
				
					sdtgv=(rs.getString("sdt"));
				
					socmndgv=(rs.getString("socmnd"));
				
					tongiaogv=(rs.getString("tongiao"));
				
					ghichugv=rs.getString("ghichu");
				}
				SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
				String gt="";
				if(gioitinhgv==1)
					gt="Nam";
				else
					gt="Nữ";
				tt=new ThongTinUser(usernamegv,"",khoagv,"",hotengv,formatter.format(ngaysinhgv),gt,noisinhgv,dantocgv,socmndgv,tongiaogv,diachigv,sdtgv,emailgv,ghichugv);											
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
		
		
		return tt;
		
	}
	
	
	public ThongTinUser LayThongTin2(String username) 
	{
		ChuoiKetNoiMYSQL s=new ChuoiKetNoiMYSQL();
		ThongTinUser tt=null;		
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
			rs=stm.executeQuery("SELECT * FROM users,role WHERE username='"+username+"' and users.roleid=role.roleid");
				String usernamegv="";
				String hotengv="";
				String dantocgv="";
				String diachigv="";
				String emailgv="";
				int gioitinhgv=0;
				//@SuppressWarnings("unused")
				Date ngaysinhgv=new Date();			
				String noisinhgv="";
				String sdtgv="";
				String socmndgv="";
				String tongiaogv="";
				String ghichugv="";
				String chucvu="";
				String pass="";
				String khoagv="";
				while(rs.next())		
				{								
					if(rs.getDate("ngaysinh")==null)
					{
						SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
						String dateInString = "1990-01-01";
						try {
							ngaysinhgv=formatter.parse(dateInString);
							formatter.format(ngaysinhgv);
						} catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					else
					{

						ngaysinhgv=rs.getDate("ngaysinh");

						
					}
					chucvu=rs.getString("rolename");
					pass=rs.getString("pass");
					usernamegv=(rs.getString("username"));
					khoagv=rs.getString("khoa");
					hotengv=(rs.getString("hoten"));
					
					dantocgv=(rs.getString("dantoc"));
				
					diachigv=(rs.getString("diachi"));
					
					emailgv=(rs.getString("email"));
					
					gioitinhgv=rs.getInt("gioitinh");	
				
					noisinhgv=(rs.getString("noisinh"));
				
					sdtgv=(rs.getString("sdt"));
				
					socmndgv=(rs.getString("socmnd"));
				
					tongiaogv=(rs.getString("tongiao"));
				
					ghichugv=rs.getString("ghichu");
				}						
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
				String gt="";
				if(gioitinhgv==1)
					gt="Nam";
				else
					gt="Nữ";
				tt=new ThongTinUser(usernamegv,pass,khoagv,chucvu,hotengv,formatter.format(ngaysinhgv),gt,noisinhgv,dantocgv,socmndgv,tongiaogv,diachigv,sdtgv,emailgv,ghichugv);																							
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
		
		
		return tt;
		
	}
}
