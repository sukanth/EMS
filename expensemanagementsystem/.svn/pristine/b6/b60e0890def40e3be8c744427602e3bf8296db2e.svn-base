package com.room.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.room.EMS.Beans.User_bean;
import com.room.EMS.Beans.login_bean;

public class StatementResultsetExtractor implements ResultSetExtractor{

	@Override
	public Object extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		// TODO Auto-generated method stub
		User_bean ub=new User_bean();
		ub.setUsername(rs.getString("username"));
		ub.setName(rs.getString("expname"));
		ub.setExpenseDate(rs.getString("expdate"));
		ub.setApplicableto(rs.getString("applicableto"));
		ub.setAmount(rs.getDouble("amount"));
		ub.setStatusCd(rs.getString("status_cd"));
		return ub;
	}
	
}
