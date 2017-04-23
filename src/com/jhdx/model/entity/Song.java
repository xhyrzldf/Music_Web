package com.jhdx.model.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Song entity. @author MyEclipse Persistence Tools
 */

public class Song implements java.io.Serializable {

	// Fields

	private Integer songId;
	private Singer singer;
	private Dvd dvd;
	private Songtype songtype;
	private Songstatus songstatus;
	private String songName;
	private String songLastTime;
	private String songSrc;
	private Integer hot;
	private Set songlistdetailses = new HashSet(0);
	private Set dowloadsongs = new HashSet(0);
	private Set dvddetailses = new HashSet(0);
	private Set comments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Song() {
	}

	/** full constructor */
	public Song(Singer singer, Dvd dvd, Songtype songtype, Songstatus songstatus, String songName, String songLastTime,
			String songSrc, Integer hot,Set songlistdetailses, Set dowloadsongs, Set dvddetailses, Set comments) {
		this.singer = singer;
		this.dvd = dvd;
		this.songtype = songtype;
		this.songstatus = songstatus;
		this.songName = songName;
		this.songLastTime = songLastTime;
		this.songSrc = songSrc;
		this.setHot(hot);
		this.songlistdetailses = songlistdetailses;
		this.dowloadsongs = dowloadsongs;
		this.dvddetailses = dvddetailses;
		this.comments = comments;
	}

	// Property accessors

	public Integer getSongId() {
		return this.songId;
	}

	public void setSongId(Integer songId) {
		this.songId = songId;
	}

	public Singer getSinger() {
		return this.singer;
	}

	public void setSinger(Singer singer) {
		this.singer = singer;
	}

	public Dvd getDvd() {
		return this.dvd;
	}

	public void setDvd(Dvd dvd) {
		this.dvd = dvd;
	}

	public Songtype getSongtype() {
		return this.songtype;
	}

	public void setSongtype(Songtype songtype) {
		this.songtype = songtype;
	}

	public Songstatus getSongstatus() {
		return this.songstatus;
	}

	public void setSongstatus(Songstatus songstatus) {
		this.songstatus = songstatus;
	}

	public String getSongName() {
		return this.songName;
	}

	public void setSongName(String songName) {
		this.songName = songName;
	}

	public String getSongLastTime() {
		return this.songLastTime;
	}

	public void setSongLastTime(String songLastTime) {
		this.songLastTime = songLastTime;
	}

	public String getSongSrc() {
		return this.songSrc;
	}

	public void setSongSrc(String songSrc) {
		this.songSrc = songSrc;
	}

	public Set getSonglistdetailses() {
		return this.songlistdetailses;
	}

	public void setSonglistdetailses(Set songlistdetailses) {
		this.songlistdetailses = songlistdetailses;
	}

	public Set getDowloadsongs() {
		return this.dowloadsongs;
	}

	public void setDowloadsongs(Set dowloadsongs) {
		this.dowloadsongs = dowloadsongs;
	}

	public Set getDvddetailses() {
		return this.dvddetailses;
	}

	public void setDvddetailses(Set dvddetailses) {
		this.dvddetailses = dvddetailses;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

	public Integer getHot() {
		return hot;
	}

	public void setHot(Integer hot) {
		this.hot = hot;
	}


}