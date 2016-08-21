package com.room.EMS.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.room.EMS.Beans.User_bean;
import com.room.EMS.Beans.login_bean;
import com.room.EMS.Service.login_service;
import com.room.EMS.Service.user_service;
import com.room.EMS.util.EmsUtil;

@Controller
@SessionAttributes("username")
public class login_controller {
	EmsUtil util;
	@Autowired
	login_service login_service;

	@RequestMapping(value = "/login")
	public String login(Model model) {

		model.addAttribute(new login_bean());

		return "login";
	}

	// try again
	@RequestMapping(value = "/tryagain")
	public String tryagain(Model model, HttpSession session) {

		model.addAttribute(new login_bean());

		return "login";
	}

	@RequestMapping(value = "/AddMember")
	public String PreAdd(Model model, HttpSession session) {
		EmsUtil util = new EmsUtil();
		if (util.isValidSession(session)) {
			model.addAttribute("Add_member", new login_bean());
		}
		return "AddMember";
	}

	// update
	@RequestMapping(value = "/UpdateMember")
	public String preupdate(Model model, HttpSession session) {
		EmsUtil util = new EmsUtil();
		if (util.isValidSession(session)) {
			List<login_bean> l = new ArrayList();
			l = login_service.showdata();
			session.setAttribute("l", l);
		}
		return "UpdateMember";
	}
	
	//back to statement page
		@RequestMapping(value = "/backtoStatement")
		public String backtoStatement(@Valid User_bean statement,BindingResult result,Model model,HttpSession session) {
			EmsUtil util = new EmsUtil();
			if (util.isValidSession(session)) {
				model.addAttribute("statement", new User_bean());
			}
			return "statement";

		}

	
	//view statement
	
		@RequestMapping(value = "/viewstatement",method=RequestMethod.POST)
		public String viewstatement(@ModelAttribute("statement") @Valid User_bean statement,BindingResult binding, Model model, HttpSession session)  {
			EmsUtil util = new EmsUtil();
			if (util.isValidSession(session)) {
				List<User_bean> s=login_service.getStatement(statement.getFromdate(),statement.getTodate());
			session.setAttribute("statementList", s);
			session.setAttribute("from", statement.getFromdate());
			session.setAttribute("to", statement.getTodate());
			}
			return "viewstatement";
		}
		

	@RequestMapping(value = "/DoUpdate")
	public String update(Model model, @RequestParam("id") String id,
			login_bean login_bean, HttpSession session) {
		EmsUtil util = new EmsUtil();
		if (util.isValidSession(session)) {
			model.addAttribute("l1", login_service.showmember(id));
		}
		return "DoUpdate";
	}
	
	// statement
			@RequestMapping(value = "/statement")
			public String statement(@Valid User_bean statement,BindingResult result,Model model,HttpSession session) {
				model.addAttribute("statement", new User_bean());
				return "statement";
				
			}

	@RequestMapping(value = "/Update")
	public String postupdate(
			@ModelAttribute("l1") @Valid login_bean login_bean,
			BindingResult result, Model model, HttpSession session) {

		boolean b = login_service.updateMember(login_bean);

		if (b == true)
			return "AddSuccess";
		else
			return "failure";
	}

	// delete list
	@RequestMapping(value = "/DeleteMember")
	public String predelete(Model model, HttpSession session) {
		EmsUtil util = new EmsUtil();
		if (util.isValidSession(session)) {
			List<login_bean> l = new ArrayList();
			l = login_service.showdata();
			model.addAttribute("dl", l);
		}
		return "DeleteMember";
	}

	@RequestMapping(value = "/DoDelete")
	public String delete(Model model, @RequestParam("id") String id,
			login_bean login_bean, HttpSession session) {

		boolean b = login_service.DeleteMember(id);

		if (b == true)
			return "DeleteSuccess";

		else
			return "failure";
	}

	// login validation
	@RequestMapping(value = "/login_bean", method = RequestMethod.POST)
	public String SubmitLogin(@Valid login_bean login_bean,
			BindingResult binding, Model model, HttpSession session) {

		if (binding.hasErrors()) {
			return "login";

		} else {
			String role = login_service.authenticate(login_bean);

			if (role != null) {
				session.setAttribute("username", login_bean.getUsername());
				if (role.equals("admin")) {
					model.addAttribute("username", login_bean.getUsername());

					return "AdminPage";
				} else if (role.equals("user")) {
					model.addAttribute("username", login_bean.getUsername());
					return "UserPage";
				}
			}

		}

		return "failure";

	}

	// logout
	@RequestMapping(value = "/adminlogout")
	public String adminlogout(Model model, login_bean adminlogout,
			HttpSession session) {
		session.invalidate();
		return "login";
	}

	// add another member
	@RequestMapping(value = "/addanother")
	public String addanother(Model model, login_bean addanother,
			HttpSession session) {
		EmsUtil util = new EmsUtil();
		if (util.isValidSession(session)) {
		}
		return "AdminPage";
	}

	// all expense manager
	@RequestMapping(value = "/all")
	public String allexpensemanager(Model model, HttpSession session) {
		EmsUtil util = new EmsUtil();
		if (util.isValidSession(session)) {
			List<User_bean> v = new ArrayList();
			Double total = 0.0;
			v = login_service.viewall();
			for (User_bean ub : v) {
				total += ub.getAmount();
			}
			session.setAttribute("va", v);
			session.setAttribute("all", total);
			// model.addAttribute("av", v);
			return "allexpensemanager";
		} else {
			return "failure";
		}
	}

	// delete expense
	@RequestMapping(value = "/delete")
	public String delete(Model model, HttpSession session,@RequestParam("id") String id) {
		
		boolean b = login_service.DeleteExpense(id);
		if (b == true){
			EmsUtil util = new EmsUtil();
			if (util.isValidSession(session)) {
				List<User_bean> v = new ArrayList();
				Double total = 0.0;
				v = login_service.viewall();
				for (User_bean ub : v) {
					total += ub.getAmount();
				}
				session.setAttribute("va", v);
				session.setAttribute("all", total);
		
			
			}
			return "allexpensemanager";
		}
		else
		return "failure";

	}
	

	// add member
	@RequestMapping(value = "/AddData", method = RequestMethod.POST)
	public String Add(
			@ModelAttribute("Add_member") @Valid login_bean Add_member,
			BindingResult binding, Model model, HttpSession session) {

		if (binding.hasErrors()) {
			return "AddMember";
		} else {

			int i = login_service.Add(Add_member);
			if (i == 1) {
				return "AddSuccess";
			} else
				return "failure";

		}

	}

	// make all active as inactive
	@RequestMapping(value = "/bulkoperations")
	public String bulk(Model model, HttpSession session) {
		boolean r = login_service.bulkoperations();
		if (r) {
			EmsUtil util = new EmsUtil();

			List<User_bean> v = new ArrayList();
			Double total = 0.0;
			v = login_service.viewall();
			for (User_bean ub : v) {
				total += ub.getAmount();
			}
			session.setAttribute("va", v);
			session.setAttribute("all", total);
			return "bulkoperation";
		} else
			return "nothingupdated";
	}
}
