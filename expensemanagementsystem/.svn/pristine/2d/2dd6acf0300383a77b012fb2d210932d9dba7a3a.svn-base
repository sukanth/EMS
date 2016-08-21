package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;
import com.room.EMS.Beans.*;
import com.room.EMS.Beans.IndividualExpense;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

public class IndividualExpenseExtractor implements ResultSetExtractor{

	@Override
	public Object extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		IndividualExpense ie=new IndividualExpense();
		ie.setExpense(rs.getDouble("expense"));
		ie.setUsername(rs.getString("username"));
			return ie;
		}
	}
	


