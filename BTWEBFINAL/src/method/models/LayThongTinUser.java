package method.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LayThongTinUser {
	public ThongTinUser LayThongTin(String username,String password) 
	{
		ThongTinUser tt=new ThongTinUser();		
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
				tt.setDantoc(dantocgv);
				tt.setDiachi(diachigv);
				tt.setEmail(emailgv);
				if(gioitinhgv==1)
					tt.setGioitinh("Nam");
				else
					tt.setGioitinh("Nữ");				
				tt.setHoten(hotengv);
				
				SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
				tt.setNgaysinh(formatter.format(ngaysinhgv));
				tt.setNoisinh(noisinhgv);
				tt.setSdt(sdtgv);
				tt.setSocmnd(socmndgv);
				tt.setTongiao(tongiaogv);
				tt.setUsername(usernamegv);
				tt.setGhichu(ghichugv);
									
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
