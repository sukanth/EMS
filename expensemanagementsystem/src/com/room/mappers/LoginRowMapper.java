package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class LoginRowMapper implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int i) throws SQLException {
		// TODO Auto-generated method stub
		LoginResultsetExtractor l=new LoginResultsetExtractor();
		Object obj=l.extractData(rs);
		return obj;
	}

}
