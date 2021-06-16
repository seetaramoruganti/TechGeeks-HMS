package com.techgeeks.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techgeeks.model.Doc;


public interface DocRepository  extends JpaRepository<Doc,Integer>{

	List<Doc> findByApid(String apid);
}
