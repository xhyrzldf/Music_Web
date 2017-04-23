package com.jhdx.model.entity;

import java.util.Date;

/**
 * Dowloadsong entity. @author MyEclipse Persistence Tools
 */

public class Dowloadsong implements java.io.Serializable {

	// Fields

	private Integer downLoadSongId;
	private Song song;
	private User user;
	private Date downLoadTime;

	// Constructors

	/** default constructor */
	public Dowloadsong() {
	}

	/** full constructor */
	public Dowloadsong(Song song, User user, Date downLoadTime) {
		this.song = song;
		this.user = user;
		this.downLoadTime = downLoadTime;
	}

	// Property accessors

	public Integer getDownLoadSongId() {
		return this.downLoadSongId;
	}

	public void setDownLoadSongId(Integer downLoadSongId) {
		this.downLoadSongId = downLoadSongId;
	}

	public Song getSong() {
		return this.song;
	}

	public void setSong(Song song) {
		this.song = song;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getDownLoadTime() {
		return this.downLoadTime;
	}

	public void setDownLoadTime(Date downLoadTime) {
		this.downLoadTime = downLoadTime;
	}

}