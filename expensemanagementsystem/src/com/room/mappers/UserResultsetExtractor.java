package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.room.EMS.Beans.User_bean;

public class UserResultsetExtractor implements ResultSetExtractor{

	@Override
	public Object extractData(ResultSet r) throws SQLException,
			DataAccessException {
		User_bean ub=new User_bean();
		ub.setUsername(r.getString(1));
		ub.setName(r.getString(2));
		ub.setDate(r.getString(3));
		ub.setApplicableto(r.getString(4));
		ub.setAmount(r.getDouble(5));
		ub.setId(r.getInt(14));
		ub.setStatus(r.getString(13));
		return ub;
	}

}
