package com.jhdx.model.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Singertype entity. @author MyEclipse Persistence Tools
 */

public class Singertype implements java.io.Serializable {

	// Fields

	private Integer singerTypeId;
	private String singerTypeName;
	private Set singers = new HashSet(0);

	// Constructors

	/** default constructor */
	public Singertype() {
	}

	/** full constructor */
	public Singertype(String singerTypeName, Set singers) {
		this.singerTypeName = singerTypeName;
		this.singers = singers;
	}

	// Property accessors

	public Integer getSingerTypeId() {
		return this.singerTypeId;
	}

	public void setSingerTypeId(Integer singerTypeId) {
		this.singerTypeId = singerTypeId;
	}

	public String getSingerTypeName() {
		return this.singerTypeName;
	}

	public void setSingerTypeName(String singerTypeName) {
		this.singerTypeName = singerTypeName;
	}

	public Set getSingers() {
		return this.singers;
	}

	public void setSingers(Set singers) {
		this.singers = singers;
	}

}