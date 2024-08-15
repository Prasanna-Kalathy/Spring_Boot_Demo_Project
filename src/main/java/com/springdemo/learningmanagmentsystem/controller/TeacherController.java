package com.springdemo.learningmanagmentsystem.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.springdemo.learningmanagmentsystem.dao.CourseAssignedDAO;
import com.springdemo.learningmanagmentsystem.dao.CourseDAO;
import com.springdemo.learningmanagmentsystem.dao.LoginDAO;
import com.springdemo.learningmanagmentsystem.dao.TeacherDAO;
import com.springdemo.learningmanagmentsystem.dao.TeacherLoginDAO;
import com.springdemo.learningmanagmentsystem.model.Teacher;
import com.springdemo.learningmanagmentsystem.model.TeacherLogin;

@Controller
@RequestMapping("/api/vi")
public class TeacherController {

	@Autowired
	TeacherDAO tdao;

	@Autowired
	LoginDAO loginDAO;

	@Autowired
	TeacherLoginDAO tlDao;

	@Autowired
	CourseDAO cdao;

	@Autowired
	CourseAssignedDAO cadao;

	ModelAndView mv;

	TeacherLogin log = new TeacherLogin();
	String n1="teacher_submitted";
	String n2="tusername";

	@GetMapping("/teacher")
	public String teacherPersonalDetailsForm(HttpSession session) {
		session.getAttribute(n2);
		return "teacher_academic_form";
	}

	@PostMapping("/teacher")
	public String personalDetailsFormFilt(Teacher tp, ModelMap model) {
		List<Teacher> tec = tdao.findByTeacherId(tp.getTeacherId());
		if (tec.isEmpty()) {
			tdao.save(tp);
			return n1;
		} else {
			return "talreadyexist";
		}
	}

	@RequestMapping("/tch_home")
	public String teacherHomePage() {
		return "teacher_home";
	}

	@GetMapping("/teacherview")
	public ModelAndView teacherPersonalDetailsView(ModelMap model, HttpSession session) {
		String user = (String) session.getAttribute(n2);
		mv = new ModelAndView("teacher_academic_view_update");
		Teacher t = tdao.findByTusername(user);
		mv.addObject("obj", t);
		return mv;
	}

	@GetMapping("/teacher_update")
	public ModelAndView showupdateTeacherAcademicForm(@RequestParam int id, ModelMap model) {
		Teacher opt = tdao.findById(id);
		mv = new ModelAndView("update_teacher_academic_form");
		mv.addObject("obj", opt);
		return mv;
	}

	@PostMapping("/teacher_update")
	public String updateTeacherAcademicForm(Teacher tp, ModelMap model, HttpSession session) {
		String user = (String) session.getAttribute(n2);
		Teacher ts = tdao.findByTusername(user);
		int id = ts.getId();
		Teacher opt = tdao.findById(id);
		Teacher option = opt;
		option.setId(id);
		option.setTeacherId(tp.getTeacherId());
		option.setTusername(tp.getTusername());
		option.setEmail(tp.getEmail());
		option.setFirstname(tp.getFirstname());
		option.setMiddlename(tp.getMiddlename());
		option.setLastname(tp.getLastname());
		option.setDateOfBirth(tp.getDateOfBirth());
		option.setGender(tp.getGender());
		option.setDepartment(tp.getDepartment());
		option.setAddress1(tp.getAddress1());
		option.setAddress2(tp.getAddress2());
		option.setCity(tp.getCity());
		option.setState(tp.getState());
		option.setZipcode(tp.getZipcode());

		tdao.save(option);
		return n1;
	}

	@DeleteMapping("/teacher_delete")
	@ResponseBody
	public String teacherDelete(ModelMap model, @RequestParam int id) {
		tdao.deleteById(id);
		return "null";
	}

	@RequestMapping("/tsubmit")
	public String teacherSubmit() {
		return n1;
	}

	@RequestMapping("/tmarks")
	public String teachermarks() {
		return "teacherupload";
	}

}
