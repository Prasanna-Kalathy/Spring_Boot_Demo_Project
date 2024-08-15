package com.springdemo.learningmanagmentsystem.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.SessionAttributes;

import com.springdemo.learningmanagmentsystem.dao.AdminLoginDao;
import com.springdemo.learningmanagmentsystem.dao.HelpdeskDAO;
import com.springdemo.learningmanagmentsystem.dao.LoginDAO;
import com.springdemo.learningmanagmentsystem.dao.TeacherLoginDAO;
import com.springdemo.learningmanagmentsystem.model.AdminLogin;
import com.springdemo.learningmanagmentsystem.model.Helpdesk;
import com.springdemo.learningmanagmentsystem.model.LoginUser;
import com.springdemo.learningmanagmentsystem.model.TeacherLogin;
import com.sun.jdi.connect.Connector.StringArgument;

@Controller
@RequestMapping("/api/vi")
@SessionAttributes({ "username", "ausername", "tusername", "res", "tres", "ares" })
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

	@RequestMapping("/student_univ_home")
	public String universityHomepage() {
		return "university_home_page";
	}

	@GetMapping("/student_log")
	public String home() {
		return "student_login";
	}

	@PostMapping("/student_hom")
	public String homeStudent(LoginUser lu, ModelMap model, HttpServletRequest request) {

		List<LoginUser> us = this.loginDAO.findByUsername(lu.getUsername());
		List<LoginUser> pas = this.loginDAO.findByPassword(lu.getPassword());

		String username = lu.getUsername();

		HttpSession session = request.getSession();

		model.put("username", username);

		if (us.isEmpty() && pas.isEmpty()) {
			model.put("validu", "Enter valid username");
			model.put("validp", "Enter valid password");
			return "student_login";
		} else if (pas.isEmpty()) {
			model.put("validp", "Enter valid password");
			return "student_login";
		} else if (us.isEmpty()) {
			model.put("validu", "Enter valid username");
			return "student_login";
		} else {
			session.setAttribute("username", username);
			return "student_home";
		}
	}

	@GetMapping("/student_logout")
	public String studentMarks(HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("username");
		session.invalidate();
		return "redirect:/api/vi/student_log";
	}

	@GetMapping("/teacher_log")
	public String teacherLogin() {
		return "teacher_login";
	}

	@PostMapping("/teacher_hom")
	public String homeTeacher(TeacherLogin tl, ModelMap model, HttpSession session) {

		List<TeacherLogin> us = this.tlDAO.findByTusername(tl.getTusername());
		List<TeacherLogin> pas = this.tlDAO.findByPassword(tl.getPassword());

		String tusername = tl.getTusername();

		model.put("tusername", tusername);

		if (us.isEmpty() && pas.isEmpty()) {
			model.put("validu", "Enter valid username");
			model.put("validp", "Enter valid password");
			return "teacher_login";
		} else if (pas.isEmpty()) {
			model.put("validp", "Enter valid password");
			return "teacher_login";
		} else if (us.isEmpty()) {
			model.put("validu", "Enter valid username");
			return "teacher_login";
		} else {
			session.setAttribute("tusername", tusername);
			return "teacher_home";
		}
	}
	
	@GetMapping("/teacher_logout")
	public String teacherMarks(HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("tusername");
		session.invalidate();
		return "redirect:/api/vi/teacher_log";
	}

	@GetMapping("/admin_log")
	public String adminLogin() {
		return "adminlogin";
	}

	@RequestMapping("/admin_hom")
	public String homeAdmin(AdminLogin al, ModelMap model, HttpSession session) {

		List<AdminLogin> us = this.alDAO.findByAusername(al.getAusername());
		List<AdminLogin> pas = this.alDAO.findByPassword(al.getPassword());

		String ausername = al.getAusername();

		model.put("ausername", ausername);

		if (us.isEmpty() && pas.isEmpty()) {
			model.put("validu", "Enter valid username");
			model.put("validp", "Enter valid password");
			return "adminlogin";
		} else if (pas.isEmpty()) {
			model.put("validp", "Enter valid password");
			return "adminlogin";
		} else if (us.isEmpty()) {
			model.put("validu", "Enter valid username");
			return "adminlogin";
		} else {
			session.setAttribute("ausername", ausername);
			return "adminhome";
		}
	}
	
	@GetMapping("/admin_logout")
	public String adminMarks(HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("ausername");
		session.invalidate();
		return "redirect:/api/vi/admin_log";
	}

	@GetMapping("/helpdesk")
	public String helpDesk() {
		return "Helpdesk";
	}
	@PostMapping("/help")
	public String helpDeskAdd(Helpdesk h,ModelMap model) {
		String user=(String)model.get("username");
		String tuser=(String)model.get("tusername");
		if((h.getRole()).equals("STUDENT")) {
			h.setUser(user);
		}else {
			h.setUser(tuser);
		}
		hdao.save(h);
		return "Helpdesk";
	}

}
