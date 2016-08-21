package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserRowMapper implements RowMapper{


	@Override
	public Object mapRow(ResultSet r, int n) throws SQLException {
		// TODO Auto-generated method stub
		UserResultsetExtractor ur=new UserResultsetExtractor();
		Object ob=ur.extractData(r);
		return ob;
	}

}
