package com.springdemo.learningmanagmentsystem.dao;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springdemo.learningmanagmentsystem.model.AdminPersonalDetails;

@Repository
public interface AdminDetailsDao extends JpaRepository<AdminPersonalDetails, Integer>{
	
	AdminPersonalDetails findByAusername(String ausername);
	List<AdminPersonalDetails> findByAdminid(String adminid);

}