package com.springdemo.learningmanagmentsystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springdemo.learningmanagmentsystem.model.TeacherLogin;

@Repository
public interface TeacherLoginDAO extends JpaRepository<TeacherLogin, Integer> {

	List<TeacherLogin> findByTusername(String tusername);

	List<TeacherLogin> findByPassword(String password);
}
