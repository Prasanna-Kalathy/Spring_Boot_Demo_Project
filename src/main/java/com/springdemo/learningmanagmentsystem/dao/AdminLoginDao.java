package com.springdemo.learningmanagmentsystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springdemo.learningmanagmentsystem.model.AdminLogin;

@Repository
public interface AdminLoginDao extends JpaRepository<AdminLogin, Integer> {

	List<AdminLogin> findByAusername(String ausername);

	List<AdminLogin> findByPassword(String password);

}