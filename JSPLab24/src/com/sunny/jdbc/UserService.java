package com.sunny.jdbc;
import com.sunny.to.*;
import com.sunny.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserService {

	public int verifyUser(String un,String pw){
		int x=0;
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			con=JDBCUTIL.getMySQLConnection();
//			con1=JDBCUTIL.myOracleConnection();
			String sql="select * from myuser where username=? and password=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, un);
			ps.setString(2, pw);
			rs=ps.executeQuery();
			if(rs.next())
				x=1;
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		finally {
			JDBCUTIL.mycleanup2(rs, ps, con);
		}
		
		
		return x;
	}

	public int registerUser(UserTO uto){
		int x=0;
		Connection con=null;
		PreparedStatement ps=null;

		
		try {
			con=JDBCUTIL.getMySQLConnection();
//			con1=JDBCUTIL.myOracleConnection();
			String sql="insert into myuser values(?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setInt(1, uto.getUserid());
			ps.setString(2,uto.getFname());
			ps.setString(3, uto.getEmail());
			ps.setLong(4, uto.getPhone());
			ps.setString(5, uto.getUsername());
			ps.setString(6, uto.getPassword());
			x=ps.executeUpdate();
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		finally {
			JDBCUTIL.mycleanup1(ps, con);
		}
		
		
		return x;
	}

	
	
	
	
	public String getPasswordByEmail(String em){
		String pw=null;
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			con=JDBCUTIL.getMySQLConnection();
//			con1=JDBCUTIL.myOracleConnection();
			String sql="select password from myuser where email=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, em);
			rs=ps.executeQuery();
			if (rs.next()) {
				pw=rs.getString(1);
			}
		
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		finally {
			JDBCUTIL.mycleanup2(rs, ps, con);
		}
		
		
		return pw;
	}

	

	public int getNextUserId(){
		int x = 0;
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			con=JDBCUTIL.getMySQLConnection();
//			con1=JDBCUTIL.myOracleConnection();
			String sql="select max(userid) from myuser";
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			if (rs.next()) {
				x=rs.getInt(1);
				x=x+1;
			}
		
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		finally {
			JDBCUTIL.mycleanup2(rs, ps, con);
		}
		
		
		return x;
	}


	
	

}
