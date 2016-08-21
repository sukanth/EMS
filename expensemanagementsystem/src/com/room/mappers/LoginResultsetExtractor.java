package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.room.EMS.Beans.login_bean;
import com.room.EMS.util.EmsUtil;

public class LoginResultsetExtractor implements ResultSetExtractor{

	@Override
	public Object extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		// TODO Auto-generated method stub
		login_bean lb=new login_bean();
		lb.setUsername(rs.getString(1));
		lb.setPassword(EmsUtil.decrypt(rs.getString(2)));
		lb.setRole(rs.getString(3));
		return lb;
	}
	
}
