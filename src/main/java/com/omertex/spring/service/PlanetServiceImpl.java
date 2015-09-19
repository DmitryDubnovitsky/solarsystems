package com.omertex.spring.service;

import com.omertex.spring.dao.PlanetDAO;
import com.omertex.spring.domain.Planet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PlanetServiceImpl implements PlanetService {

    @Autowired
    private PlanetDAO PlanetDAO;

    @Transactional
    public void savePlanet(Planet planet) {
        PlanetDAO.savePlanet(planet);
    }

    @Transactional
    public List<Planet> planetList() {
        return PlanetDAO.planetList();
    }

    @Transactional
    public void removePlanet(Long id) {
        PlanetDAO.removePlanet(id);
    }
    
    @Transactional
    public Planet retrivePlanet(Long id){
        return PlanetDAO.retrivePlanet(id);
    }
    @Transactional
	public Planet findByName(String name) {
		return PlanetDAO.findByName(name);
	}
    
}