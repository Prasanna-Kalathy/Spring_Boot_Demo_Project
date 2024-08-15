package com.springdemo.learningmanagmentsystem;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.springdemo.learningmanagmentsystem.controller.AdminController;
import com.springdemo.learningmanagmentsystem.controller.CourseController;
import com.springdemo.learningmanagmentsystem.controller.LoginController;
import com.springdemo.learningmanagmentsystem.controller.StudentController;
import com.springdemo.learningmanagmentsystem.controller.TeacherController;
import com.springdemo.learningmanagmentsystem.dao.AdminDetailsDao;
import com.springdemo.learningmanagmentsystem.dao.CourseDAO;
import com.springdemo.learningmanagmentsystem.dao.HelpdeskDAO;
import com.springdemo.learningmanagmentsystem.dao.LoginDAO;
import com.springdemo.learningmanagmentsystem.dao.StudentDetailsDAO;
import com.springdemo.learningmanagmentsystem.dao.TeacherDAO;
import com.springdemo.learningmanagmentsystem.model.AdminPersonalDetails;
import com.springdemo.learningmanagmentsystem.model.Helpdesk;
import com.springdemo.learningmanagmentsystem.model.StudentPersonalDetails;
import com.springdemo.learningmanagmentsystem.model.Teacher;

@SpringBootTest
class LearningManagementSystemApplicationTests {

	@Autowired
	private AdminController ac;
	
	@Autowired
	private AdminDetailsDao add;
	
	@Autowired
	private LoginController lc;
	
	@Autowired
	private LoginDAO ldao;
	
	@Autowired
	private StudentController sc;
	
	@Autowired
	private StudentDetailsDAO sddao;
	
	@Autowired
	private TeacherController tc;
	
	@Autowired
	private TeacherDAO tdao;
	
	@Autowired
	private HelpdeskDAO hdao;
	
	
	@Test
	void universityHomepage() {
		assertEquals("university_home_page",lc.universityHomepage());
	}

	@Test
	void home() {
		assertEquals("student_login",lc.home());
	}
	
	@Test
	void teacherLogin(){
		assertEquals("teacher_login",lc.teacherLogin());
	}
	
	@Test
	void adminLogin(){
		assertEquals("adminlogin",lc.adminLogin());
	}
	
	@Test
	void helpDesk(){
		assertEquals("Helpdesk",lc.helpDesk());
	}
	
	@Test
	void adminHome(){
		assertEquals("adminhome",ac.adminHome());
	}
	
	@Test
	void studentSubmit(){
		assertEquals("submitted",sc.studentSubmit());
	}
	
	@Test
	void teacherSubmit(){
		assertEquals("teacher_submitted",tc.teacherSubmit());
	}
	
	@Test
	void teachermarks(){
		assertEquals("teacherupload",tc.teachermarks());
	}
	
	@Test
	void personalDetailsFormFill() {
		List<StudentPersonalDetails> s = (List<StudentPersonalDetails>) this.sddao.findByRegno("902222");
		assertThat(s).size().isGreaterThan(0);
	}
	
	@Test
	void personalDetailsFormFilt() {
		List<Teacher> tec = tdao.findByTeacherId("T10");
		assertThat(tec).size().isGreaterThan(0);
	}
	
	@Test
	void studentAdminView() {
		List<StudentPersonalDetails> cur = this.sddao.findAll();
		assertThat(cur).size().isGreaterThan(0);
		}
	
	
}

