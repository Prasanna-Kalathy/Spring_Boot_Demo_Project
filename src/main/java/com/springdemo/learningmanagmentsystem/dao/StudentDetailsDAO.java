package com.springdemo.learningmanagmentsystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springdemo.learningmanagmentsystem.model.StudentPersonalDetails;

@Repository
public interface StudentDetailsDAO extends JpaRepository<StudentPersonalDetails, Integer> {
	StudentPersonalDetails findByUsername(String username);

	List<StudentPersonalDetails> findByRegno(String username);

	StudentPersonalDetails findById(int id);

	StudentPersonalDetails findByRegno(int regno);
}
