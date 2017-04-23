package com.jhdx.model.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Dvdtype entity. @author MyEclipse Persistence Tools
 */

public class Dvdtype implements java.io.Serializable {

	// Fields

	private Integer dvdTypeId;
	private String dvdTypeName;
	private Set dvds = new HashSet(0);

	// Constructors

	/** default constructor */
	public Dvdtype() {
	}

	/** full constructor */
	public Dvdtype(String dvdTypeName, Set dvds) {
		this.dvdTypeName = dvdTypeName;
		this.dvds = dvds;
	}

	// Property accessors

	public Integer getDvdTypeId() {
		return this.dvdTypeId;
	}

	public void setDvdTypeId(Integer dvdTypeId) {
		this.dvdTypeId = dvdTypeId;
	}

	public String getDvdTypeName() {
		return this.dvdTypeName;
	}

	public void setDvdTypeName(String dvdTypeName) {
		this.dvdTypeName = dvdTypeName;
	}

	public Set getDvds() {
		return this.dvds;
	}

	public void setDvds(Set dvds) {
		this.dvds = dvds;
	}

}