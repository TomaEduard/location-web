package com.example.location.contollers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.location.entities.Location;
import com.example.location.service.LocationService;
import com.example.location.util.EmailUtil;

@Controller
public class LocationController {

	@Autowired
	private LocationService locationService;

	@Autowired
	EmailUtil emailUtil;

	@RequestMapping("/showCreate")
	public String showCreate() {

		return "createLocation";
	}

	@RequestMapping("/saveLoc")
	public String saveLocation(@ModelAttribute("location") Location location, ModelMap modelMap) {

		Location saveLocation = locationService.saveLocation(location);
		String msg = "Location saved with id: " + saveLocation.getId();
		modelMap.addAttribute("msg", msg);

		emailUtil.sendEmail("tester.application.email@gmail.com",
							"Location Saved",
							"Location Saved Succesfully and avout to return a response.");
		
		return "createLocation";
	}

	@RequestMapping("/displayLocations")
	public String displayLocations(ModelMap modelMap) {

		List<Location> locations = locationService.getAllLocations();
		modelMap.addAttribute("locations", locations);

		return "displayLocations";
	}

	@RequestMapping("/deleteLocation")
	public String deleteLocagion(@RequestParam("id") int id, ModelMap modelMap) {

		// reduct db call, to take the object, we create an object here with the id
		// another easy way is to change delete method to have int param
//		Location location = locationService.getLocation(id);
		Location location = new Location();
		location.setId(id);

		locationService.deleteLocation(location);

		List<Location> locations = locationService.getAllLocations();
		modelMap.addAttribute("locations", locations);

		return "displayLocations";
	}

	@RequestMapping("/showUpdate")
	public String showUpdatePage(@RequestParam("id") int id, ModelMap modelMap) {

//		Optional<Location> location = locationService.findById(id);
		Location location = locationService.getLocationById(id);
		modelMap.addAttribute("location", location);

		return "updateLocation";
	}

	@RequestMapping("/updateLoc")
	public String updateLocation(@ModelAttribute("location") Location location, ModelMap modelMap) {

		locationService.updateLocation(location);

		List<Location> allLocations = locationService.getAllLocations();
		modelMap.addAttribute("locations", allLocations);

		return "displayLocations";
	}
}
