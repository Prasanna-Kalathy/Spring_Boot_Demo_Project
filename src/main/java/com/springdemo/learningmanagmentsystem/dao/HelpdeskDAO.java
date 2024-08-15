package com.springdemo.learningmanagmentsystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springdemo.learningmanagmentsystem.model.Helpdesk;

@Repository
public interface HelpdeskDAO extends JpaRepository<Helpdesk, Integer> {

}
