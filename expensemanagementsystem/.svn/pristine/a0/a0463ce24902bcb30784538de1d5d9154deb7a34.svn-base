package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.room.EMS.Beans.login_bean;

public class UpdateResultsetExtractor implements ResultSetExtractor{

	@Override
	public Object extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		// TODO Auto-generated method stub
		login_bean lb=new login_bean();
		lb.setUsername(rs.getString("username"));
		lb.setPassword(rs.getString("password"));
		lb.setRole(rs.getString("role"));
		lb.setStatus_cd(rs.getString("status_cd"));
		
		return lb;
	}
	
}
