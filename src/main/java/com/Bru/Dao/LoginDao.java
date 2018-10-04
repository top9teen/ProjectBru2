package com.Bru.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.Bru.Bean.LoginBean;
import com.Bru.Bean.LoginBeanSimple;
import com.Bru.util.ConnectDB;



@Repository
public class LoginDao {

	
	public LoginBean login (LoginBeanSimple beansim) throws SQLException{
		LoginBean bean = new LoginBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		
		try {
			sql.append(" SELECT * FROM  usertable WHERE lo_email = ? AND lo_password = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1,beansim.getEmail());
			prepared.setString(2,beansim.getPassword());

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
			bean.setLoEmail(rs.getString("lo_email"));
			bean.setLoPassword(rs.getString("lo_password"));
			bean.setLoStatus(rs.getString("lo_id"));
			bean.setLoStatus(rs.getString("lo_status"));
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return bean ;
	}
	public LoginBean loginfas (LoginBeanSimple beansim) throws SQLException{
		LoginBean bean = new LoginBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		
		try {
			sql.append(" SELECT * FROM  usertable WHERE lo_email = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1,beansim.getEmail());
		

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
			bean.setLoEmail(rs.getString("lo_email"));
			bean.setLoPassword(rs.getString("lo_password"));
			bean.setLoStatus(rs.getString("lo_id"));
			bean.setLoStatus(rs.getString("lo_status"));
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return bean ;
	}
public void registerfas (LoginBeanSimple beansim) throws SQLException{
		
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		
		try {
			sql.append(" INSERT INTO UserTable (lo_email,lo_password,lo_status)VALUES(?,'xxxx','2') ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1,beansim.getEmail());
	
			prepared.executeUpdate();
			

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		
	}

public void register (LoginBeanSimple beansim) throws SQLException{
	
	ConnectDB con = new ConnectDB();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();
	Connection conn = con.openConnect();
	
	try {
		sql.append(" INSERT INTO UserTable (lo_email,lo_password,lo_status)VALUES(?,?,'2') ");
		prepared = conn.prepareStatement(sql.toString());
		prepared.setString(1,beansim.getEmail());
		prepared.setString(2,beansim.getPassword());
		prepared.executeUpdate();
		

}
	catch (Exception e) {
		e.printStackTrace();
	}
	finally {
		conn.close();
	}
	
	
}


public void sssser21(String email , String repass) throws SQLException {

	ConnectDB con = new ConnectDB();
	Connection conn = con.openConnect();
	PreparedStatement prepared = null;
	StringBuilder sql = new StringBuilder();

	try {
		sql.append(" UPDATE usertable SET lo_password = ?  WHERE  lo_email = ? ");
		prepared = conn.prepareStatement(sql.toString());

		prepared.setString(1, repass);
		prepared.setString(2, email);

		prepared.executeUpdate();

	} catch (Exception e) {
		// TODO: handle exception
	} finally {
		conn.close();
	}

}
	// end class
}
