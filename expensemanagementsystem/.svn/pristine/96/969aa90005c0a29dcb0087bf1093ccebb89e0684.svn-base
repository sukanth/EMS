package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;



public class CalculationRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs, int arg1) throws SQLException {
		CalculationExtractor l=new CalculationExtractor();
		Object obj=l.extractData(rs);
		return obj;
	}
	

}
