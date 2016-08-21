package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class StatementRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs, int i) throws SQLException {
		StatementResultsetExtractor l=new StatementResultsetExtractor();
		Object obj=l.extractData(rs);
		return obj;
	}

}
