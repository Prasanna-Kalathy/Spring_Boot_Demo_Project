package com.springdemo.learningmanagmentsystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springdemo.learningmanagmentsystem.dao.CourseAssignedDAO;
import com.springdemo.learningmanagmentsystem.dao.CourseDAO;
import com.springdemo.learningmanagmentsystem.dao.StudentDetailsDAO;
import com.springdemo.learningmanagmentsystem.dao.TeacherDAO;
import com.springdemo.learningmanagmentsystem.model.Course;
import com.springdemo.learningmanagmentsystem.model.CourseAssigned;
import com.springdemo.learningmanagmentsystem.model.StudentPersonalDetails;
import com.springdemo.learningmanagmentsystem.model.Teacher;

@Controller
@RequestMapping("/api/vi")
@SessionAttributes({ "username","tusername"})
public class CourseController {

	@Autowired
	CourseDAO cdao;

	@Autowired
	CourseAssignedDAO cadao;
	
	@Autowired
	StudentDetailsDAO sdao;
	
	@Autowired
	TeacherDAO tdao;
	
	
	CourseAssigned ca;
	Course c;

	@GetMapping("/student_cour_add")
	public String couradd(ModelMap model) {
		List<Course> cur =  cdao.findAll();
		String user=(String)model.get("username");
		StudentPersonalDetails sp=sdao.findByUsername(user);
		model.addAttribute("sp",sp);
		model.addAttribute("list", cur);
		return "student_choose_course";
	}

	@GetMapping("/cour_add")
	public String courseinsert(@RequestParam String courseName, ModelMap model) {
		c = cdao.findByCourseName(courseName);
		String courseId = c.getCourseId();
		String tuser=c.getTusername();
		String tid=c.getTeacherId();

		String user = (String) model.get("username");

		ca = new CourseAssigned();
		ca.setCourseId(courseId);
		ca.setCourseName(courseName);
		ca.setUsername(user);
		ca.setTusername(tuser);
		ca.setTeacherId(tid);
		cadao.save(ca);
		return "coursesubmitted";
	}

	@GetMapping("/student_cour_view")
	public String courseview(ModelMap model) {
		String user = (String) model.get("username");
		StudentPersonalDetails sp=sdao.findByUsername(user);
		model.addAttribute("sp",sp);
		List<CourseAssigned> cur = cadao.findByUsername(user);
		model.addAttribute("list", cur);
		return "student_course_assigned";

	}

	@GetMapping("/student_teacher_assigned")
	public String teacherassigned(ModelMap model) {
		String user = (String) model.get("username");
		StudentPersonalDetails sp=sdao.findByUsername(user);
		model.addAttribute("sp",sp);
		List<CourseAssigned> cur =  cadao.findByUsername(user);
		model.addAttribute("list", cur);
		return "teacher_assigned_to_students";
	}
	
	@GetMapping("/teacher_student_assigned")
	public String studentassigned(ModelMap model) {
		String user = (String) model.get("tusername");
		Teacher sp=tdao.findByTusername(user);
		model.addAttribute("sp",sp);
		List<CourseAssigned> cur =  cadao.findByTusername(user);
		model.addAttribute("list", cur);
		return "student_assigned_to_teachers";
	}

	@GetMapping("/student_marks")
	public String studentmarks(ModelMap model) {
		String user = (String) model.get("username");
		StudentPersonalDetails sp=sdao.findByUsername(user);
		model.addAttribute("sp",sp);
		List<CourseAssigned> cur = cadao.findByUsername(user);
		model.addAttribute("list", cur);
		return "student_marks_view";
	}

	@GetMapping("/student_cour_submit")
	public String submittedcourse(ModelMap model) {
		return "coursesubmitted";
	}
}
