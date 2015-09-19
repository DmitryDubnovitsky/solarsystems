package com.omertex.spring.dao;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.omertex.spring.domain.Planet;
import com.omertex.spring.service.PlanetService;


@Repository
public class PlanetDAOImpl implements PlanetDAO {
	
	@Autowired
    PlanetService planetService;

    @Autowired
    private SessionFactory sessionFactory;

    public void savePlanet(Planet planet) {
        sessionFactory.getCurrentSession().saveOrUpdate(planet);
    }

    @SuppressWarnings("unchecked")
	public List<Planet> planetList() {
        return sessionFactory.getCurrentSession().
        		getNamedQuery( Planet.NamedQuery.Planet_FIND_ALL ).list();
    }

    public void removePlanet(Long id) {
        Planet planet = (Planet) sessionFactory.getCurrentSession().load(
                Planet.class, id);
        if (null != planet) {
            sessionFactory.getCurrentSession().delete(planet);
         }
     }
    
    public  Planet retrivePlanet(Long id){
        Query q = sessionFactory.getCurrentSession().
        		getNamedQuery( Planet.NamedQuery.Planet_FIND_BY_ID );
        q.setLong("id", id);
            return (Planet) q.uniqueResult();
     }

	public Planet findByName(String name) {
		 Query q = sessionFactory.getCurrentSession().
	        	getNamedQuery( Planet.NamedQuery.Planet_FIND_BY_NAME );
	     q.setString("name", name);
	        return (Planet) q.uniqueResult();
	}
}