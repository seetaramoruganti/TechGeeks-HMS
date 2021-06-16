package com.techgeeks.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techgeeks.model.Appointment;
import com.techgeeks.model.Doctor;
import com.techgeeks.model.Feedback;


@Repository
public interface FeedBackRepository extends JpaRepository<Feedback, Integer> {

}
