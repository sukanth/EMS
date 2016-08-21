package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UpdateRowMapper implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int i) throws SQLException {
		// TODO Auto-generated method stub
		UpdateResultsetExtractor l=new UpdateResultsetExtractor();
		Object obj=l.extractData(rs);
		return obj;
	}

}
