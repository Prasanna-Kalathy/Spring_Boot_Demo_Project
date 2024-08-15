package com.springdemo.learningmanagmentsystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springdemo.learningmanagmentsystem.model.AdminPersonalDetails;
import com.springdemo.learningmanagmentsystem.model.Teacher;

@Repository
public interface TeacherDAO extends JpaRepository<Teacher, Integer> {
	Teacher findByTusername(String tusername);
	Teacher deleteByTusername(String tusername);
	Teacher findById(int id);
	List<Teacher> findByTeacherId(String teacherId);
}
