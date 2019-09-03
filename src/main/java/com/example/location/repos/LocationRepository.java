package com.example.location.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.location.entities.Location;

public interface LocationRepository extends JpaRepository<Location, Integer> {

	Location getLocationById(int id);
	
	
}
