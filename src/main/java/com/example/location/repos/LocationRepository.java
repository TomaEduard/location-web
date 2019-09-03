package com.example.location.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.location.entities.Location;

public interface LocationRepository extends JpaRepository<Location, Integer> {

	Location getLocationById(int id);

//	@Query("SELECT type,COUNT(type) from projectdb.location group by type")
//	public List<Object[]> findTypeAndTypeCount();
	
	@Query("select type,count(type) from Location group by type")
	public List<Object[]> findTypeAndTypeCount();
}
