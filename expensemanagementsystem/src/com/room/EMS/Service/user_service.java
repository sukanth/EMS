package com.room.EMS.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.room.EMS.Beans.IndividualExpense;
import com.room.EMS.Beans.User_bean;
import com.room.EMS.Controller.User_controller;
import com.room.EMS.DataAccess.User_dao;
import com.room.EMS.DataAccess.login_dao;
import com.room.EMS.util.EmsUtil;

@Service
public class user_service {
	@Autowired
	User_dao user_dao;

	public int addexpense(User_bean expense) {
		
		return user_dao.addexpense(expense);
	}

	public List viewall(String username) {
		// TODO Auto-generated method stub
		return user_dao.viewall(username);
	}

	public List<User_bean> viewyour(String username) {
		// TODO Auto-generated method stub
		return user_dao.viewyour(username);
	}

	public List fetchUsers() {
		// TODO Auto-generated method stub
		return user_dao.fetchUsers();
	}

	public List<IndividualExpense> getCalculations(String username) {
		// TODO Auto-generated method stub
		
		return user_dao.getCalculations(username);
	}

	public List<IndividualExpense> getIndividualExpense(String username) {
		// TODO Auto-generated method stub
		return user_dao.getIndividualExpense(username);
	}
	public boolean changePassword(String changedpassword,String username) {
		// TODO Auto-generated method stub
		return user_dao.changePassword(EmsUtil.encrypt(changedpassword),username);
	}

}
