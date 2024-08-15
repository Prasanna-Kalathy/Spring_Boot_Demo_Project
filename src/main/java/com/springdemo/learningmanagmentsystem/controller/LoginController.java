package com.springdemo.learningmanagmentsystem.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.springdemo.learningmanagmentsystem.dao.AdminLoginDao;
import com.springdemo.learningmanagmentsystem.dao.HelpdeskDAO;
import com.springdemo.learningmanagmentsystem.dao.LoginDAO;
import com.springdemo.learningmanagmentsystem.dao.TeacherLoginDAO;
import com.springdemo.learningmanagmentsystem.model.AdminLogin;
import com.springdemo.learningmanagmentsystem.model.Helpdesk;
import com.springdemo.learningmanagmentsystem.model.LoginUser;
import com.springdemo.learningmanagmentsystem.model.TeacherLogin;

@Controller
@RequestMapping("/api/vi")
public final class LoginController {

	@Autowired
	LoginDAO loginDAO;

	@Autowired
	TeacherLoginDAO tlDAO;

	@Autowired
	AdminLoginDao alDAO;

	@Autowired
	HelpdeskDAO hdao;

	LoginUser log = new LoginUser();
	String n1="Enter valid password";
	String n2="Enter valid username";
	String n3="adminlogin";
	String n4="ausername";
	String n5="student_login";
	String n6="teacher_login";
	String n7="tusername";
	String n8="username";
	String n9="validp";
	String n10="validu";

	@RequestMapping("/student_univ_home")
	public String universityHomepage() {
		return "university_home_page";
	}

	@GetMapping("/student_log")
	public String home() {
		return n5;
	}

	@PostMapping("/student_hom")
	public String homeStudent(LoginUser lu, ModelMap model, HttpServletRequest request) {

		List<LoginUser> us = this.loginDAO.findByUsername(lu.getUsername());
		List<LoginUser> pas = this.loginDAO.findByPassword(lu.getPassword());

		String username = lu.getUsername();

		HttpSession session = request.getSession();

		if (us.isEmpty() && pas.isEmpty()) {
			model.put(n10, n2);
			model.put(n9, n1);
			return n5;
		} else if (pas.isEmpty()) {
			model.put(n9,n1);
			return n5;
		} else if (us.isEmpty()) {
			model.put(n10, n2);
			return n5;
		} else {
			session.setAttribute(n8, username);
			return "student_home";
		}
	}

	@GetMapping("/student_logout")
	public String studentMarks(HttpSession session) {
		session.removeAttribute(n8);
		session.setAttribute(n8, null);
		session.invalidate();
		return "redirect:/api/vi/student_log";
	}

	@GetMapping("/teacher_log")
	public String teacherLogin() {
		return n6;
	}

	@PostMapping("/teacher_hom")
	public String homeTeacher(TeacherLogin tl, ModelMap model, HttpSession session) {

		List<TeacherLogin> us = this.tlDAO.findByTusername(tl.getTusername());
		List<TeacherLogin> pas = this.tlDAO.findByPassword(tl.getPassword());

		String tusername = tl.getTusername();

		if (us.isEmpty() && pas.isEmpty()) {
			model.put(n10, n2);
			model.put(n9, n1);
			return n6;
		} else if (pas.isEmpty()) {
			model.put(n9, n1);
			return n6;
		} else if (us.isEmpty()) {
			model.put(n10, n2);
			return n6;
		} else {
			session.setAttribute(n7, tusername);
			return "teacher_home";
		}
	}

	@GetMapping("/teacher_logout")
	public String teacherMarks(HttpSession session) {
		session.removeAttribute(n7);
		session.setAttribute(n7, null);
		session.invalidate();
		return "redirect:/api/vi/teacher_log";
	}

	@GetMapping("/admin_log")
	public String adminLogin() {
		return n3;
	}

	@RequestMapping("/admin_hom")
	public String homeAdmin(AdminLogin al, ModelMap model, HttpSession session) {

		List<AdminLogin> us = this.alDAO.findByAusername(al.getAusername());
		List<AdminLogin> pas = this.alDAO.findByPassword(al.getPassword());

		String ausername = al.getAusername();

		if (us.isEmpty() && pas.isEmpty()) {
			model.put(n10, n2);
			model.put(n9, n1);
			return n3;
		} else if (pas.isEmpty()) {
			model.put(n9, n1);
			return n3;
		} else if (us.isEmpty()) {
			model.put(n10, n2);
			return n3;
		} else {
			session.setAttribute(n4, ausername);
			return "adminhome";
		}
	}

	@GetMapping("/admin_logout")
	public String adminMarks(HttpSession session) {
		session.removeAttribute(n4);
		session.setAttribute(n4, null);
		session.invalidate();
		return "redirect:/api/vi/admin_log";
	}

	@GetMapping("/helpdesk")
	public String helpDesk() {
		return "Helpdesk";
	}

	@PostMapping("/help")
	public String helpDeskAdd(Helpdesk h, ModelMap model, HttpSession session) {
		String user = (String) session.getAttribute(n8);
		String tuser = (String) session.getAttribute(n7);
		if ((h.getRole()).equals("STUDENT")) {
			h.setUser(user);
		} else {
			h.setUser(tuser);
		}
		hdao.save(h);
		return "Helpdesk";
	}
	
	@RequestMapping("/query")
	public String queryView(ModelMap model) {
	
		List<Helpdesk> cur = hdao.findAll();
		model.addAttribute("list", cur);
		return "query";
	}


}
