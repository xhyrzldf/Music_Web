package com.jhdx.model.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Songstatus entity. @author MyEclipse Persistence Tools
 */

public class Songstatus implements java.io.Serializable {

	// Fields

	private Integer songStatusId;
	private String songStatusName;
	private Set songs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Songstatus() {
	}

	/** full constructor */
	public Songstatus(String songStatusName, Set songs) {
		this.songStatusName = songStatusName;
		this.songs = songs;
	}

	// Property accessors

	public Integer getSongStatusId() {
		return this.songStatusId;
	}

	public void setSongStatusId(Integer songStatusId) {
		this.songStatusId = songStatusId;
	}

	public String getSongStatusName() {
		return this.songStatusName;
	}

	public void setSongStatusName(String songStatusName) {
		this.songStatusName = songStatusName;
	}

	public Set getSongs() {
		return this.songs;
	}

	public void setSongs(Set songs) {
		this.songs = songs;
	}

}