package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class YourRowMapper implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int i) throws SQLException {
		// TODO Auto-generated method stub
		YourResultsetExtractor re=new YourResultsetExtractor();
		Object ob=re.extractData(rs);
		return ob;
	}

}
