package com.springdemo.learningmanagmentsystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springdemo.learningmanagmentsystem.model.Course;

@Repository
public interface CourseDAO extends JpaRepository<Course, Integer> {

	Course findByCourseName(String courseName);

}
