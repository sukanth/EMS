package com.room.EMS.DataAccess;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.room.EMS.Beans.User_bean;
import com.room.EMS.Beans.login_bean;
import com.room.EMS.Service.login_service;
import com.room.EMS.util.EmsUtil;
import com.room.mappers.LoginRowMapper;
import com.room.mappers.StatementRowMapper;
import com.room.mappers.UpdateRowMapper;
import com.room.mappers.UserRowMapper;

@Repository
public class login_dao {

	// public static Logger logger=Logger.getLogger(login_dao.class);

	@Autowired
	login_service login_service;
	@Autowired
	JdbcTemplate jdbc;

	// authenticating user from the database

	public String authenticate(login_bean login_bean) {
		String r = null;
		Object params[] = new Object[] { login_bean.getUsername(),
				login_bean.getPassword() };
		List<login_bean> count = jdbc.query("select * from admin where status_cd <>'I'",
				new LoginRowMapper());
		for (login_bean temp : count) {
			if (temp.getUsername().equals(login_bean.getUsername())
					&& temp.getPassword().equals(login_bean.getPassword())) {
				r = temp.getRole();

			}
		}
		return r;
	}

	public int Add(login_bean add_member) {
		// TODO Auto-generated method stub
		Object params[] = new Object[] { add_member.getUsername(),
				add_member.getPassword(), "user" };
		String sql = "insert into admin (username,password,role,status_cd,joining_dt) VALUES (?,?,?,'A',sysdate())";
		int i = jdbc.update(sql, params);
		return i;
	}

	public List showdata() {
		// TODO Auto-generated method stub
		List<login_bean> l = jdbc.query("select username,password,role,status_cd from admin",
				new UpdateRowMapper());
		return l;
	}

	public login_bean showmember(String id) {
		// TODO Auto-generated method stub
		String sql = "select * from admin where username=? AND status_cd='A'";
		login_bean l = jdbc.queryForObject(sql, new LoginRowMapper(), id);
		return l;
	}

	public boolean updateMember(login_bean login_bean) {
		// TODO Auto-generated method stub
		boolean b = false;
		String sql = "update admin set password=?, role=?,modified_dt=sysdate() where username=?";
		Object params[] = new Object[] { login_bean.getPassword(),
				login_bean.getRole(), login_bean.getUsername() };
		int i = jdbc.update(sql, params);
		if (i > 0) {
			b = true;
		} else
			b = false;
		return b;
	}

	public boolean DeleteMember(String id) {
		// TODO Auto-generated method stub
		boolean b = false;
		String s = "UPDATE admin SET STATUS_CD='I',inactive_dt=sysdate() where username=?";
		Object params[] = new Object[] { id };
		int i = jdbc.update(s, params);
		if (i == 1) {
			b = true;
		} else
			b = false;
		return b;
	}

	public List viewall() {
		// TODO Auto-generated method stub
		List<User_bean> l = jdbc.query(
				"select * from expense where amount <> 0", new UserRowMapper());
		return l;
	}

	public boolean bulkoperations() {
		// TODO Auto-generated method stub
		String sql = "UPDATE expense SET status_cd ='INACTIVE' WHERE status_cd = 'ACTIVE' AND amount <> 0";
		String resetData="insert into expense (username,expname,expdate,applicableto,amount,datta,kiran,gunda,vamsi,chowdary,uday,vihar,status_cd) values ('admin','RESET DATA',sysdate(),'NONE',0,0,0,0,0,0,0,0,'INACTIVE')";
		int reset=jdbc.update(resetData);
		int r = jdbc.update(sql);
		if (r > 0)
			return true;
		else
			return false;
	}

	public boolean DeleteExpense(String id) {
		// TODO Auto-generated method stub
		boolean b = false;
		String s = "delete from expense where id=?";
		Object params[] = new Object[] { id };
		int i = jdbc.update(s, params);
		if (i == 1) {
			b = true;
		} else {
			b = false;
		}
		return b;
	}

	public List<User_bean> getStatement(String fromdate, String todate) {
		// TODO Auto-generated method stub
		Object params[] = new Object[] { fromdate,todate};
		List<User_bean> statement = jdbc.query("select username,expname,expdate,applicableto,amount,status_cd from expense where expdate between ? AND ?",params,
				new StatementRowMapper());
		return statement;
	}

}
