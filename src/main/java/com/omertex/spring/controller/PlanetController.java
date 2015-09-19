package com.omertex.spring.controller;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.omertex.spring.domain.Planet;
import com.omertex.spring.service.PlanetService;

@Controller
public class PlanetController {
	
   @Autowired
   private PlanetService planetService;
	
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(Map<String, Object> map) {
	   map.put("planetList", planetService.planetList());
	     return "home";
   }
   
   @RequestMapping("/planet/index")
   public String listPlanets(Map<String, Object> map) {
       map.put("planet", new Planet());
         return "planet_add";
   }
   
   @RequestMapping(value = "/planet/add", method = RequestMethod.POST)
   public String addPlanet(@ModelAttribute("planet") Planet planet, BindingResult result) {
       planetService.savePlanet(planet);
         return "redirect:/";
   }

   @RequestMapping("/planet/delete/{planetId}")
   public String deletePlanet(@PathVariable("planetId") Long planetId) {
       planetService.removePlanet(planetId);
         return "redirect:/";
   }
   
   @RequestMapping("/planet/save")
   public String savePlanet(@ModelAttribute("planet") Planet planet, BindingResult result) {
       planetService.savePlanet(planet);
         return "redirect:/planet/edit/" + planet.getId();
   }
   
   @RequestMapping("/planet/edit/{planetId}")
   public String editPlanet(@PathVariable("planetId") Long planetId, Map<String, Object> map) {
       Planet planet = planetService.retrivePlanet(planetId);
       map.put("planet", planet); 
         return "planet_edit";
   }
   
   @RequestMapping("/planet/{planetName}")
   public String editPlanet(@PathVariable("planetName") String planetName, Map<String, Object> map) {
       Planet planet = planetService.findByName(planetName);
       map.put("planet", planet); 
         return "planet_list";
   }

   
 }