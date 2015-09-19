package com.omertex.spring.dao;
import java.util.List;

import com.omertex.spring.domain.Planet;

public interface PlanetDAO {

    public void savePlanet(Planet planet);

    public List<Planet> planetList();

    public void removePlanet(Long id);

    public Planet retrivePlanet(Long id);
    
    public Planet findByName(String name);
}