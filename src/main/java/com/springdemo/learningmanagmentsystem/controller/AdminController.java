package com.springdemo.learningmanagmentsystem.controller;



import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.springdemo.learningmanagmentsystem.dao.AdminDetailsDao;
import com.springdemo.learningmanagmentsystem.dao.AdminLoginDao;
import com.springdemo.learningmanagmentsystem.dao.LoginDAO;
import com.springdemo.learningmanagmentsystem.dao.StudentDetailsDAO;
import com.springdemo.learningmanagmentsystem.dao.TeacherDAO;
import com.springdemo.learningmanagmentsystem.model.AdminPersonalDetails;
import com.springdemo.learningmanagmentsystem.model.LoginUser;
import com.springdemo.learningmanagmentsystem.model.StudentPersonalDetails;
import com.springdemo.learningmanagmentsystem.model.Teacher;

@Controller
@RequestMapping("/api/vi")
public class AdminController{ 

	@Autowired
	AdminDetailsDao adao;

	@Autowired
	LoginDAO loginDAO;
	
	@Autowired
	AdminLoginDao alDao;
	
	@Autowired
	StudentDetailsDAO sddao;
	
	@Autowired
	TeacherDAO tdao;
	
	ModelAndView mv;

	LoginUser log = new LoginUser();

	@GetMapping("/admin_form")
	public String personalDetailsForm(HttpSession session) {
		session.getAttribute("ausername");
		return "adminpersonaldetailsedit";
	}

	@PostMapping(value="/adminform")
	public String personalDetailsFormFila(AdminPersonalDetails ap, ModelMap model) {
		List<AdminPersonalDetails> ad=adao.findByAdminid(ap.getAdminid());
		if(ad.isEmpty()) {
			adao.save(ap);
			return "admin_submitted";	
		}else {
			return "aalreadyexist";
		}
	}
	
	@GetMapping("/adminview")
	public ModelAndView adminpersonalDetailsView(ModelMap model,HttpSession session) {
		String user = (String) session.getAttribute("ausername");
		mv = new ModelAndView("adminpersonaldetailsview");
		AdminPersonalDetails a =  adao.findByAusername(user);
		mv.addObject("obj", a);
		return mv;
	}
	
	@RequestMapping("/admin_std_view")
	public String studentAdminView(ModelMap model) {
		List<StudentPersonalDetails> cur = sddao.findAll();
		model.addAttribute("list", cur);
		return "studentadminview";
	}
	
	@RequestMapping("/admin_tec_view")
	public String teacherAdminView(ModelMap model) {
		List<Teacher> cur = tdao.findAll();
		model.addAttribute("list", cur);
		return "teacheradminview";
	}
	
	@RequestMapping("/admin_home")
	public String adminHome() {
		return "adminhome";
	}
}