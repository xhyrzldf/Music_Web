package com.jhdx.model.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Songtype entity. @author MyEclipse Persistence Tools
 */

public class Songtype implements java.io.Serializable {

	// Fields

	private Integer songTypeId;
	private String songTypeName;
	private Set songs = new HashSet(0);

	// Constructors

	/** default constructor */
	public Songtype() {
	}

	/** full constructor */
	public Songtype(String songTypeName, Set songs) {
		this.songTypeName = songTypeName;
		this.songs = songs;
	}

	// Property accessors

	public Integer getSongTypeId() {
		return this.songTypeId;
	}

	public void setSongTypeId(Integer songTypeId) {
		this.songTypeId = songTypeId;
	}

	public String getSongTypeName() {
		return this.songTypeName;
	}

	public void setSongTypeName(String songTypeName) {
		this.songTypeName = songTypeName;
	}

	public Set getSongs() {
		return this.songs;
	}

	public void setSongs(Set songs) {
		this.songs = songs;
	}

}