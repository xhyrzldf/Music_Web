package com.jhdx.model.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Userstatus entity. @author MyEclipse Persistence Tools
 */

public class Userstatus implements java.io.Serializable {

	// Fields

	private Integer userStatusId;
	private String userStatusName;
	private Set users = new HashSet(0);

	// Constructors

	/** default constructor */
	public Userstatus() {
	}

	/** full constructor */
	public Userstatus(String userStatusName, Set users) {
		this.userStatusName = userStatusName;
		this.users = users;
	}

	// Property accessors

	public Integer getUserStatusId() {
		return this.userStatusId;
	}

	public void setUserStatusId(Integer userStatusId) {
		this.userStatusId = userStatusId;
	}

	public String getUserStatusName() {
		return this.userStatusName;
	}

	public void setUserStatusName(String userStatusName) {
		this.userStatusName = userStatusName;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

}