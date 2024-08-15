package com.springdemo.learningmanagmentsystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springdemo.learningmanagmentsystem.model.Course;
import com.springdemo.learningmanagmentsystem.model.CourseAssigned;

@Repository
public interface CourseAssignedDAO extends JpaRepository<CourseAssigned, Integer> {

	List<CourseAssigned> save(List<Course> c);
	
	CourseAssigned findByCourseName(String courseName);
	
	List<CourseAssigned> findByUsername(String username);
	
	List<CourseAssigned> findByTusername(String tusername);
}
