package com.techgeeks.dao;

import com.techgeeks.model.Nurse;

public interface NurseDao {
	
	public void addNurse(Nurse nurse);
	
	public Nurse editNurse(int nurseId);

}
