package com.springdemo.learningmanagmentsystem.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.springdemo.learningmanagmentsystem.model.UpdateMarks;

@Repository
public interface UpdateMarksDAO extends JpaRepository<UpdateMarks, Integer> {

	List<UpdateMarks> findByUsername(String username);

}