package com.Bru.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.Bru.Bean.ReceiptBean;
import com.Bru.util.ConnectDB;


@Repository
public class TransferDao {
	public List<ReceiptBean> Trensasda (String email) throws SQLException{
		List<ReceiptBean>  list = new ArrayList<>();
		ReceiptBean bean  = new ReceiptBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		

		try {
			sql.append(" SELECT * FROM  receipt WHERE re_email = ?  ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1,email);
	

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ReceiptBean();
				bean.setReId(rs.getInt("re_id"));
				bean.setReName(rs.getString("re_name"));
				bean.setReEmail(rs.getString("re_email"));
				bean.setReDay(rs.getInt("re_day"));
				bean.setReMont(rs.getString("re_mont"));
				bean.setReYrar(rs.getInt("re_year"));
				bean.setReMonny(rs.getString("re_monny"));
				bean.setReBank(rs.getString("re_bank"));
				bean.setReAdmin(rs.getString("re_admin"));
				bean.setReCaryear(rs.getString("re_caryear"));
				bean.setReIdga(rs.getInt("re_idGa"));
				bean.setReCar(rs.getString("re_car"));
				bean.setReCarmodel(rs.getString("re_carmodel"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	
	}
	
	
	public List<ReceiptBean> Trens () throws SQLException{
		List<ReceiptBean>  list = new ArrayList<>();
		ReceiptBean bean  = new ReceiptBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		

		try {
			sql.append(" SELECT * FROM  receipt  ");
			prepared = conn.prepareStatement(sql.toString());
	

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ReceiptBean();
				bean.setReId(rs.getInt("re_id"));
				bean.setReName(rs.getString("re_name"));
				bean.setReEmail(rs.getString("re_email"));
				bean.setReDay(rs.getInt("re_day"));
				bean.setReMont(rs.getString("re_mont"));
				bean.setReYrar(rs.getInt("re_year"));
				bean.setReMonny(rs.getString("re_monny"));
				bean.setReBank(rs.getString("re_bank"));
				bean.setReAdmin(rs.getString("re_admin"));
				bean.setReCaryear(rs.getString("re_caryear"));
				bean.setReIdga(rs.getInt("re_idGa"));
				bean.setReCar(rs.getString("re_car"));
				bean.setReCarmodel(rs.getString("re_carmodel"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	}
	
	//ser d1 m1 y1 
	public List<ReceiptBean> Trens (int a, String b ,int c) throws SQLException{
		List<ReceiptBean>  list = new ArrayList<>();
		ReceiptBean bean  = new ReceiptBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		

		try {
			sql.append(" SELECT * FROM  receipt WHERE re_day = ? AND re_mont = ? AND re_year = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, a);
			prepared.setString(2, b);
			prepared.setInt(3, c);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ReceiptBean();
				bean.setReId(rs.getInt("re_id"));
				bean.setReName(rs.getString("re_name"));
				bean.setReEmail(rs.getString("re_email"));
				bean.setReDay(rs.getInt("re_day"));
				bean.setReMont(rs.getString("re_mont"));
				bean.setReYrar(rs.getInt("re_year"));
				bean.setReMonny(rs.getString("re_monny"));
				bean.setReBank(rs.getString("re_bank"));
				bean.setReAdmin(rs.getString("re_admin"));
				bean.setReCaryear(rs.getString("re_caryear"));
				bean.setReIdga(rs.getInt("re_idGa"));
				bean.setReCar(rs.getString("re_car"));
				bean.setReCarmodel(rs.getString("re_carmodel"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	}
	
	public List<ReceiptBean> Trens (int a) throws SQLException{
		List<ReceiptBean>  list = new ArrayList<>();
		ReceiptBean bean  = new ReceiptBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		

		try {
			sql.append(" SELECT * FROM  receipt WHERE re_day = ?  ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, a);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ReceiptBean();
				bean.setReId(rs.getInt("re_id"));
				bean.setReName(rs.getString("re_name"));
				bean.setReEmail(rs.getString("re_email"));
				bean.setReDay(rs.getInt("re_day"));
				bean.setReMont(rs.getString("re_mont"));
				bean.setReYrar(rs.getInt("re_year"));
				bean.setReMonny(rs.getString("re_monny"));
				bean.setReBank(rs.getString("re_bank"));
				bean.setReAdmin(rs.getString("re_admin"));
				bean.setReCaryear(rs.getString("re_caryear"));
				bean.setReIdga(rs.getInt("re_idGa"));
				bean.setReCar(rs.getString("re_car"));
				bean.setReCarmodel(rs.getString("re_carmodel"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	}
	
	public List<ReceiptBean> Trens (int a, String b ) throws SQLException{
		List<ReceiptBean>  list = new ArrayList<>();
		ReceiptBean bean  = new ReceiptBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		

		try {
			sql.append(" SELECT * FROM  receipt WHERE re_day = ? AND re_mont = ?  ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, a);
			prepared.setString(2, b);
			

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ReceiptBean();
				bean.setReId(rs.getInt("re_id"));
				bean.setReName(rs.getString("re_name"));
				bean.setReEmail(rs.getString("re_email"));
				bean.setReDay(rs.getInt("re_day"));
				bean.setReMont(rs.getString("re_mont"));
				bean.setReYrar(rs.getInt("re_year"));
				bean.setReMonny(rs.getString("re_monny"));
				bean.setReBank(rs.getString("re_bank"));
				bean.setReAdmin(rs.getString("re_admin"));
				bean.setReCaryear(rs.getString("re_caryear"));
				bean.setReIdga(rs.getInt("re_idGa"));
				bean.setReCar(rs.getString("re_car"));
				bean.setReCarmodel(rs.getString("re_carmodel"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	}
	
	public List<ReceiptBean> Trens ( String b ,int c) throws SQLException{
		List<ReceiptBean>  list = new ArrayList<>();
		ReceiptBean bean  = new ReceiptBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		

		try {
			sql.append(" SELECT * FROM  receipt WHERE  re_mont = ? AND re_year = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, b);
			prepared.setInt(2, c);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ReceiptBean();
				bean.setReId(rs.getInt("re_id"));
				bean.setReName(rs.getString("re_name"));
				bean.setReEmail(rs.getString("re_email"));
				bean.setReDay(rs.getInt("re_day"));
				bean.setReMont(rs.getString("re_mont"));
				bean.setReYrar(rs.getInt("re_year"));
				bean.setReMonny(rs.getString("re_monny"));
				bean.setReBank(rs.getString("re_bank"));
				bean.setReAdmin(rs.getString("re_admin"));
				bean.setReCaryear(rs.getString("re_caryear"));
				bean.setReIdga(rs.getInt("re_idGa"));
				bean.setReCar(rs.getString("re_car"));
				bean.setReCarmodel(rs.getString("re_carmodel"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	}
	public List<ReceiptBean> Trens3 (int c) throws SQLException{
		List<ReceiptBean>  list = new ArrayList<>();
		ReceiptBean bean  = new ReceiptBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		

		try {
			sql.append(" SELECT * FROM  receipt WHERE re_year = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, c);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ReceiptBean();
				bean.setReId(rs.getInt("re_id"));
				bean.setReName(rs.getString("re_name"));
				bean.setReEmail(rs.getString("re_email"));
				bean.setReDay(rs.getInt("re_day"));
				bean.setReMont(rs.getString("re_mont"));
				bean.setReYrar(rs.getInt("re_year"));
				bean.setReMonny(rs.getString("re_monny"));
				bean.setReBank(rs.getString("re_bank"));
				bean.setReAdmin(rs.getString("re_admin"));
				bean.setReCaryear(rs.getString("re_caryear"));
				bean.setReIdga(rs.getInt("re_idGa"));
				bean.setReCar(rs.getString("re_car"));
				bean.setReCarmodel(rs.getString("re_carmodel"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	}
	public List<ReceiptBean> Trens (int a, int c) throws SQLException{
		List<ReceiptBean>  list = new ArrayList<>();
		ReceiptBean bean  = new ReceiptBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		

		try {
			sql.append(" SELECT * FROM  receipt WHERE re_day = ?  AND re_year = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setInt(1, a);
			prepared.setInt(2, c);

			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ReceiptBean();
				bean.setReId(rs.getInt("re_id"));
				bean.setReName(rs.getString("re_name"));
				bean.setReEmail(rs.getString("re_email"));
				bean.setReDay(rs.getInt("re_day"));
				bean.setReMont(rs.getString("re_mont"));
				bean.setReYrar(rs.getInt("re_year"));
				bean.setReMonny(rs.getString("re_monny"));
				bean.setReBank(rs.getString("re_bank"));
				bean.setReAdmin(rs.getString("re_admin"));
				bean.setReCaryear(rs.getString("re_caryear"));
				bean.setReIdga(rs.getInt("re_idGa"));
				bean.setReCar(rs.getString("re_car"));
				bean.setReCarmodel(rs.getString("re_carmodel"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	}
	public List<ReceiptBean> Trens ( String b ) throws SQLException{
		List<ReceiptBean>  list = new ArrayList<>();
		ReceiptBean bean  = new ReceiptBean();
		ConnectDB con = new ConnectDB();
		PreparedStatement prepared = null;
		StringBuilder sql = new StringBuilder();
		Connection conn = con.openConnect();
		

		try {
			sql.append(" SELECT * FROM  receipt WHERE  re_mont = ? ");
			prepared = conn.prepareStatement(sql.toString());
			prepared.setString(1, b);
			
			ResultSet rs = prepared.executeQuery();
			while (rs.next()) {
				bean = new ReceiptBean();
				bean.setReId(rs.getInt("re_id"));
				bean.setReName(rs.getString("re_name"));
				bean.setReEmail(rs.getString("re_email"));
				bean.setReDay(rs.getInt("re_day"));
				bean.setReMont(rs.getString("re_mont"));
				bean.setReYrar(rs.getInt("re_year"));
				bean.setReMonny(rs.getString("re_monny"));
				bean.setReBank(rs.getString("re_bank"));
				bean.setReAdmin(rs.getString("re_admin"));
				bean.setReCaryear(rs.getString("re_caryear"));
				bean.setReIdga(rs.getInt("re_idGa"));
				bean.setReCar(rs.getString("re_car"));
				bean.setReCarmodel(rs.getString("re_carmodel"));
				list.add(bean);
			}

	}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			conn.close();
		}
		
		return list  ; 
	}
	//end class
}
