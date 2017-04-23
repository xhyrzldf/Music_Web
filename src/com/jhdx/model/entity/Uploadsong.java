package com.jhdx.model.entity;

import java.util.Date;

/**
 * Uploadsong entity. @author MyEclipse Persistence Tools
 */

public class Uploadsong implements java.io.Serializable {

	// Fields

	private Integer upLoadSongId;
	private User user;
	private String songName;
	private Date upLoadTime;

	// Constructors

	/** default constructor */
	public Uploadsong() {
	}

	/** full constructor */
	public Uploadsong(User user, String songName, Date upLoadTime) {
		this.user = user;
		this.songName = songName;
		this.upLoadTime = upLoadTime;
	}

	// Property accessors

	public Integer getUpLoadSongId() {
		return this.upLoadSongId;
	}

	public void setUpLoadSongId(Integer upLoadSongId) {
		this.upLoadSongId = upLoadSongId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getSongName() {
		return this.songName;
	}

	public void setSongName(String songName) {
		this.songName = songName;
	}

	public Date getUpLoadTime() {
		return this.upLoadTime;
	}

	public void setUpLoadTime(Date upLoadTime) {
		this.upLoadTime = upLoadTime;
	}

}