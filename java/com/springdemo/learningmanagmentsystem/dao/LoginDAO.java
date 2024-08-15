package com.springdemo.learningmanagmentsystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springdemo.learningmanagmentsystem.model.LoginUser;

@Repository
public interface LoginDAO extends JpaRepository<LoginUser, Integer> {
	List<LoginUser> findByUsername(String username);

	List<LoginUser> findByPassword(String password);

}
