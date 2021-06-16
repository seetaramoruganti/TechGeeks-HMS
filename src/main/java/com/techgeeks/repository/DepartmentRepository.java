package com.techgeeks.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techgeeks.model.Department;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, Integer>{

}
