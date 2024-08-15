package com.springdemo.learningmanagmentsystem.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UpdateMarks {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String username;
	private String courseName;
	private int ct1;
	private int ct2;
	private int ct3;
	private int asg;
	private int ue;
	private int total;

	public UpdateMarks() {
		super();
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

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public int getCt1() {
		return ct1;
	}

	public void setCt1(int ct1) {
		this.ct1 = ct1;
	}

	public int getCt2() {
		return ct2;
	}

	public void setCt2(int ct2) {
		this.ct2 = ct2;
	}

	public int getCt3() {
		return ct3;
	}

	public void setCt3(int ct3) {
		this.ct3 = ct3;
	}

	public int getAsg() {
		return asg;
	}

	public void setAsg(int asg) {
		this.asg = asg;
	}

	public int getUe() {
		return ue;
	}

	public void setUe(int ue) {
		this.ue = ue;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "UpdateMarks [id=" + id + ", username=" + username + ", courseName=" + courseName + ", ct1=" + ct1
				+ ", ct2=" + ct2 + ", ct3=" + ct3 + ", asg=" + asg + ", ue=" + ue + ", total=" + total + "]";
	}

}