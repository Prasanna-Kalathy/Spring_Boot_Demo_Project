package com.springdemo.learningmanagmentsystem.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class CourseAssigned {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String username;
	private String courseId;
	private String courseName;
	private String teacherId;
	private String tusername;

	public CourseAssigned() {
		super();
	}

	public CourseAssigned(String username, String courseId, String courseName, String teacherId, String tusername) {
		super();
		this.username = username;
		this.courseId = courseId;
		this.courseName = courseName;
		this.teacherId = teacherId;
		this.tusername = tusername;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getTusername() {
		return tusername;
	}

	public void setTusername(String tusername) {
		this.tusername = tusername;
	}

	public String getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}

	@Override
	public String toString() {
		return "CourseAssigned [id=" + id + ", username=" + username + ", courseId=" + courseId + ", courseName="
				+ courseName + ", teacherId=" + teacherId + ", tusername=" + tusername + "]";
	}

}
