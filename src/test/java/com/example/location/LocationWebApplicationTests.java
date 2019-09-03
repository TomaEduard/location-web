package com.example.location;

import java.util.Optional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.example.location.entities.Location;
import com.example.location.repos.LocationRepository;
import com.example.location.service.LocationService;
import com.example.student.dal.entities.Student;

@RunWith(SpringRunner.class)
@SpringBootTest
public class LocationWebApplicationTests {

	@Autowired
	LocationRepository locationRepository;
	
	@Autowired
	LocationService locationService;
	
	@Test
	public void contextLoads() {
	}

	
	@Test
	public void getLocationById() {
		
//		Location location = locationRepository.getLocationById(4);
//		System.out.println(location);
		
//		Optional<Location> location = locationRepository.findById(4);
		Optional<Location> location = locationService.findById(4);
		System.out.println(location);

	}
}
