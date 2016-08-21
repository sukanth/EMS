package com.room.EMS.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.room.EMS.Beans.User_bean;
import com.room.EMS.Beans.login_bean;
import com.room.EMS.DataAccess.User_dao;
import com.room.EMS.DataAccess.login_dao;
import com.room.EMS.util.EmsUtil;
@Service
public class login_service {
	
	@Autowired
	login_dao login_dao;
	

	public String authenticate(login_bean login_bean) {
		// TODO Auto-generated method stub
		return login_dao.authenticate(login_bean);
	}

	public int Add(login_bean add_member) {
		// TODO Auto-generated method stub
		add_member.setPassword(EmsUtil.encrypt(add_member.getPassword()));
		return login_dao.Add(add_member);
	}
	public List showdata() {
		// TODO Auto-generated method stub
		return login_dao.showdata();
	}

	public login_bean showmember(String id) {
		// TODO Auto-generated method stub
		return login_dao.showmember(id);
	}

	public boolean updateMember(login_bean login_bean) {
		// TODO Auto-generated method stub
		login_bean.setPassword(EmsUtil.encrypt(login_bean.getPassword()));
		return login_dao.updateMember(login_bean);
	}

	public boolean DeleteMember(String id) {
		// TODO Auto-generated method stub
		return login_dao.DeleteMember(id);
	}

	public List viewall() {
		// TODO Auto-generated method stub
		return login_dao.viewall();
	}

	public boolean bulkoperations() {
		// TODO Auto-generated method stub
		return login_dao.bulkoperations();
	}

	public boolean DeleteExpense(String id) {
		// TODO Auto-generated method stub
		return login_dao.DeleteExpense(id);
	}

	public List<User_bean> getStatement(String fromdate, String todate) {
		// TODO Auto-generated method stub
		return login_dao.getStatement(fromdate,todate);
	}
	

}
