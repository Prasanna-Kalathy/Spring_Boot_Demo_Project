package com.springdemo.learningmanagmentsystem.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.springdemo.learningmanagmentsystem.dao.CourseAssignedDAO;
import com.springdemo.learningmanagmentsystem.dao.CourseDAO;
import com.springdemo.learningmanagmentsystem.dao.LoginDAO;
import com.springdemo.learningmanagmentsystem.dao.StudentDetailsDAO;
import com.springdemo.learningmanagmentsystem.dao.TeacherDAO;
import com.springdemo.learningmanagmentsystem.model.LoginUser;
import com.springdemo.learningmanagmentsystem.model.StudentPersonalDetails;

@Controller
@RequestMapping("/api/vi")
public class StudentController {

	@Autowired
	StudentDetailsDAO sdao;

	@Autowired
	LoginDAO loginDAO;

	@Autowired
	CourseDAO cdao;

	@Autowired
	CourseAssignedDAO cadao;

	@Autowired
	TeacherDAO tdao;

	ModelAndView mv;

	LoginUser log = new LoginUser();
	String n1="submitted";
	String n2="username";

	@GetMapping("/student")
	public String personalDetailsForm(ModelMap model, HttpSession session) {
		session.getAttribute(n2);
		return "student_academic_form";
	}

	@PostMapping(value = "/student")
	public String personalDetailsFormFill(StudentPersonalDetails sp, ModelMap model) {
		List<StudentPersonalDetails> s = this.sdao.findByRegno(sp.getRegno());
		if (s.isEmpty()) {
			sdao.save(sp);
			return n1;
		} else {
			return "alreadyexist";
		}
	}

	@RequestMapping("/std_home")
	public String studentHomePage() {
		return "student_home";
	}

	@GetMapping("/student_update")
	public ModelAndView showupdateStudentAcademicForm(@RequestParam int id, ModelMap model) {
		StudentPersonalDetails opt = sdao.findById(id);
		mv = new ModelAndView("update_student_academic_form");
		mv.addObject("obj", opt);
		return mv;
	}

	@PostMapping("/student_update")
	public String updateStudentAcademicForm(StudentPersonalDetails sp, ModelMap model, HttpSession session) {
		String user = (String) session.getAttribute(n2);
		StudentPersonalDetails st = sdao.findByUsername(user);
		int id = st.getId();
		StudentPersonalDetails opt = sdao.findById(id);
		StudentPersonalDetails option = opt;
		option.setId(id);
		option.setRegno(sp.getRegno());
		option.setUsername(sp.getUsername());
		option.setEmail(sp.getEmail());
		option.setFirstname(sp.getFirstname());
		option.setMiddlename(sp.getMiddlename());
		option.setLastname(sp.getLastname());
		option.setDateOfBirth(sp.getDateOfBirth());
		option.setGender(sp.getGender());
		option.setDegree(sp.getDegree());
		option.setDepartment(sp.getDepartment());
		option.setCoursetype(sp.getCoursetype());
		option.setAddress1(sp.getAddress1());
		option.setAddress2(sp.getAddress2());
		option.setCity(sp.getCity());
		option.setState(sp.getState());
		option.setZipcode(sp.getZipcode());

		sdao.save(option);
		return n1;
	}

	@GetMapping("/studentview")
	public ModelAndView personalDetailsView(ModelMap model, HttpSession session) {
		String user = (String) session.getAttribute(n2);
		mv = new ModelAndView("student_academic_view_update");
		StudentPersonalDetails s = sdao.findByUsername(user);
		mv.addObject("obj", s);
		return mv;
	}

	@RequestMapping("/submit")
	public String studentSubmit() {
		return n1;
	}

}
