package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;

import com.room.EMS.Beans.IndividualExpense;

public class CalculationExtractor {

	public Object extractData(ResultSet rs) throws SQLException,
	DataAccessException {
		// TODO Auto-generated method stub
	IndividualExpense ie=new IndividualExpense();
	ie.setDatta(rs.getDouble("datta"));
	ie.setGunda(rs.getDouble("gunda"));
	ie.setKiran(rs.getDouble("kiran"));
	ie.setUday(rs.getDouble("uday"));
	ie.setVamsi(rs.getDouble("vamsi"));
	ie.setChowdary(rs.getDouble("chowdary"));
	ie.setVihar(rs.getDouble("vihar"));
	ie.setUsername(rs.getString("username"));
		return ie;
	}

}
