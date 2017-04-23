package com.jhdx.model.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Dvdstatus entity. @author MyEclipse Persistence Tools
 */

public class Dvdstatus implements java.io.Serializable {

	// Fields

	private Integer dvdStatusId;
	private String dvdStatusName;
	private Set dvds = new HashSet(0);

	// Constructors

	/** default constructor */
	public Dvdstatus() {
	}

	/** full constructor */
	public Dvdstatus(String dvdStatusName, Set dvds) {
		this.dvdStatusName = dvdStatusName;
		this.dvds = dvds;
	}

	// Property accessors

	public Integer getDvdStatusId() {
		return this.dvdStatusId;
	}

	public void setDvdStatusId(Integer dvdStatusId) {
		this.dvdStatusId = dvdStatusId;
	}

	public String getDvdStatusName() {
		return this.dvdStatusName;
	}

	public void setDvdStatusName(String dvdStatusName) {
		this.dvdStatusName = dvdStatusName;
	}

	public Set getDvds() {
		return this.dvds;
	}

	public void setDvds(Set dvds) {
		this.dvds = dvds;
	}

}