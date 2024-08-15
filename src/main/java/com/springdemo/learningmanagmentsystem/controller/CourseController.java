package com.springdemo.learningmanagmentsystem.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.springdemo.learningmanagmentsystem.dao.CourseAssignedDAO;
import com.springdemo.learningmanagmentsystem.dao.CourseDAO;
import com.springdemo.learningmanagmentsystem.dao.StudentDetailsDAO;
import com.springdemo.learningmanagmentsystem.dao.TeacherDAO;
import com.springdemo.learningmanagmentsystem.dao.UpdateMarksDAO;
import com.springdemo.learningmanagmentsystem.model.Course;
import com.springdemo.learningmanagmentsystem.model.CourseAssigned;
import com.springdemo.learningmanagmentsystem.model.StudentPersonalDetails;
import com.springdemo.learningmanagmentsystem.model.Teacher;
import com.springdemo.learningmanagmentsystem.model.UpdateMarks;

@Controller
@RequestMapping("/api/vi")
public class CourseController {

	@Autowired
	CourseDAO cdao;

	@Autowired
	CourseAssignedDAO cadao;

	@Autowired
	StudentDetailsDAO sdao;

	@Autowired
	TeacherDAO tdao;

	@Autowired
	UpdateMarksDAO umdao;

	int total;

	CourseAssigned ca;
	Course c;
	
	String n1="tusername";
	String n2="username";

	@GetMapping("/student_cour_add")
	public String couradd(ModelMap model, HttpSession session) {
		List<Course> cur = cdao.findAll();
		String user = (String) session.getAttribute(n2);
		StudentPersonalDetails sp = sdao.findByUsername(user);
		model.addAttribute("sp", sp);
		model.addAttribute("list", cur);
		return "student_choose_course";
	}

	@GetMapping("/cour_add")
	public String courseinsert(@RequestParam String courseName, ModelMap model, HttpSession session) {
		c = cdao.findByCourseName(courseName);
		String courseId = c.getCourseId();
		String tuser = c.getTusername();
		String tid = c.getTeacherId();

		String user = (String) session.getAttribute(n2);
		List<CourseAssigned> s = cadao.findByUsernameAndCourseName(user, courseName);
		ca = new CourseAssigned();
		if (s.isEmpty()) {
			ca.setCourseId(courseId);
			ca.setCourseName(courseName);
			ca.setUsername(user);
			ca.setTusername(tuser);
			ca.setTeacherId(tid);
			cadao.save(ca);
			return "coursesubmitted";
		} else {
			return "alreadyexist";
		}
	}

	@GetMapping("/student_cour_view")
	public String courseview(ModelMap model, HttpSession session) {
		String user = (String) session.getAttribute(n2);
		StudentPersonalDetails sp = sdao.findByUsername(user);
		model.addAttribute("sp", sp);
		List<CourseAssigned> cur = cadao.findByUsername(user);
		model.addAttribute("list", cur);
		return "student_course_assigned";

	}

	@GetMapping("/student_teacher_assigned")
	public String teacherassigned(ModelMap model, HttpSession session) {
		String user = (String) session.getAttribute(n2);
		StudentPersonalDetails sp = sdao.findByUsername(user);
		model.addAttribute("sp", sp);
		List<CourseAssigned> cur = cadao.findByUsername(user);
		model.addAttribute("list", cur);
		return "teacher_assigned_to_students";
	}

	@GetMapping("/teacher_student_assigned")
	public String studentassigned(ModelMap model, HttpSession session) {
		String user = (String) session.getAttribute(n1);
		Teacher sp = tdao.findByTusername(user);
		model.addAttribute("sp", sp);
		List<CourseAssigned> cur = cadao.findByTusername(user);
		model.addAttribute("list", cur);
		return "student_assigned_to_teachers";
	}

	@GetMapping("/student_marks")
	public String studentmarks(ModelMap model, HttpSession session) {
		String user = (String) session.getAttribute("username");
		StudentPersonalDetails sp = sdao.findByUsername(user);
		model.addAttribute("sp", sp);
		List<UpdateMarks> cur = umdao.findByUsername(user);
		model.addAttribute("list", cur);

		return "student_marks_view";
	}

	@GetMapping("/student_cour_submit")
	public String submittedcourse(ModelMap model) {
		return "coursesubmitted";
	}

	@GetMapping("/marks")
	public String updateMarks(ModelMap model, HttpSession session) {
		String user = (String) session.getAttribute(n1);
		Teacher sp = tdao.findByTusername(user);
		model.addAttribute("sp", sp);
		List<CourseAssigned> cur = cadao.findByTusername(user);
		model.addAttribute("list", cur);
		return "update_marks";
	}

	@RequestMapping("/marks_add")
	public String updateAddMarks(@ModelAttribute UpdateMarks up, ModelMap model, HttpSession session) {
		up.setTotal((up.getCt1() + up.getCt2() + up.getCt3() + up.getAsg() + up.getUe()));
		umdao.save(up);
		return "marksUploadConfirmation";
	}

}
