package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.room.EMS.Beans.User_bean;

public class YourResultsetExtractor implements ResultSetExtractor{

	@Override
	public Object extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		// TODO Auto-generated method stub
		User_bean ub=new User_bean();
		ub.setUsername(rs.getString(1));
		ub.setName(rs.getString(2));
		ub.setDate(rs.getString(3));
		ub.setAmount(rs.getDouble(5));
		ub.setApplicableto(rs.getString(4));
		return ub;
	}

}
