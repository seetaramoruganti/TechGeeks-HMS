package com.techgeeks.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.techgeeks.model.Nurse;
import com.techgeeks.repository.NurseRepository;

@Component
public class NurseService implements NurseDao {

	@Autowired
	NurseRepository nurseRepository;

	public List<Nurse> findAllNurse() {
		// TODO Auto-generated method stub

		List<Nurse> nurseList = nurseRepository.findAll();
		return nurseList;
	}

	@Override
	public void addNurse(Nurse nurse) {
		// TODO Auto-generated method stub

		nurseRepository.save(nurse);

	}

	
	@Override
	public Nurse editNurse(int nurseId) {
		// TODO Auto-generated method stub
		
		Nurse nurse = nurseRepository.findById(nurseId).get();
		return nurse;
	}

}
