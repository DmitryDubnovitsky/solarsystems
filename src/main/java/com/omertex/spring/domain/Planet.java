package com.omertex.spring.domain;
import javax.persistence.*;

@NamedQueries({
	@NamedQuery(name = Planet.NamedQuery.Planet_FIND_ALL, query = "from Planet"),
	@NamedQuery(name = Planet.NamedQuery.Planet_FIND_BY_ID, query = "from Planet where id = :id") })
@NamedNativeQueries({ 
	@NamedNativeQuery(name = Planet.NamedQuery.Planet_FIND_BY_NAME, query = "select * from planet where name = :name", resultClass = Planet.class) })

@Entity
@Table(name = "planet")
public class Planet {
	
	@Id
	@GeneratedValue
	private long id;

	@Column(name = "name", unique = true, nullable = false)
	private String name;
	
	@Column(name = "fio", unique = true, nullable = false)
	private String fio;

	@Column(name="distance")
	private long distance;
	
	@Column(name="diameter")
	private long diameter;

	@Column(columnDefinition = "enum('yes','no')")
	@Enumerated(EnumType.STRING)
	private Atmosphere atmosphere = Atmosphere.yes;
	
	public Planet() {
	
	}

	public String getFio() {
		return fio;
	}

	public void setFio(String fio) {
		this.fio = fio;
	}

	public long getDistance() {
		return distance;
	}

	public void setDistance(long distance) {
		this.distance = distance;
	}

	public long getDiameter() {
		return diameter;
	}

	public void setDiameter(long diameter) {
		this.diameter = diameter;
	}

	public Atmosphere getAtmosphere() {
		return atmosphere;
	}

	public void setAtmosphere(Atmosphere atmosphere) {
		this.atmosphere = atmosphere;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public static class NamedQuery {
		public static final String Planet_FIND_ALL = "Planet.findAll";
		public static final String Planet_FIND_BY_ID = "Planet.findById";
		public static final String Planet_FIND_BY_NAME = "Planet.findByName";
	}

}