package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class IndividualExpenseRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs, int arg1) throws SQLException {
		IndividualExpenseExtractor l=new IndividualExpenseExtractor();
		Object obj=l.extractData(rs);
		return obj;
	}

}
