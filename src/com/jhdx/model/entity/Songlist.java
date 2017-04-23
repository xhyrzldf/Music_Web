package com.jhdx.model.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Songlist entity. @author MyEclipse Persistence Tools
 */

public class Songlist implements java.io.Serializable {

	// Fields

	private Integer songListId;
	private User user;
	private String songListName;
	private String songListIconSrc;
	private Date songListTime;
	private int songListStatus;
	private Set songlistdetailses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Songlist() {
	}

	/** full constructor */
	public Songlist(User user, String songListName, String songListIconSrc, Date songListTime, Set songlistdetailses) {
		this.user = user;
		this.songListName = songListName;
		this.songListIconSrc = songListIconSrc;
		this.songListTime = songListTime;
		this.songlistdetailses = songlistdetailses;
	}

	// Property accessors

	public Integer getSongListId() {
		return this.songListId;
	}

	public void setSongListId(Integer songListId) {
		this.songListId = songListId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getSongListName() {
		return this.songListName;
	}

	public void setSongListName(String songListName) {
		this.songListName = songListName;
	}

	public String getSongListIconSrc() {
		return this.songListIconSrc;
	}

	public void setSongListIconSrc(String songListIconSrc) {
		this.songListIconSrc = songListIconSrc;
	}

	public Date getSongListTime() {
		return this.songListTime;
	}

	public void setSongListTime(Date songListTime) {
		this.songListTime = songListTime;
	}

	public Set getSonglistdetailses() {
		return this.songlistdetailses;
	}

	public void setSonglistdetailses(Set songlistdetailses) {
		this.songlistdetailses = songlistdetailses;
	}

	public int getSongListStatus() {
		return songListStatus;
	}

	public void setSongListStatus(int songListStatus) {
		this.songListStatus = songListStatus;
	}

}