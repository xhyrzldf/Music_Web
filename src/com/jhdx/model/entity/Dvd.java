package com.jhdx.model.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Dvd entity. @author MyEclipse Persistence Tools
 */

public class Dvd implements java.io.Serializable {

	// Fields

	private Integer dvdId;
	private Dvdstatus dvdstatus;
	private Dvdtype dvdtype;
	private Singer singer;
	private String dvdName;
	private String dvdIconSrc;
	private Set songs = new HashSet(0);
	private Set dvddetailses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Dvd() {
	}

	/** full constructor */
	public Dvd(Dvdstatus dvdstatus, Dvdtype dvdtype, Singer singer, String dvdName, String dvdIconSrc, Set songs,
			Set dvddetailses) {
		this.dvdstatus = dvdstatus;
		this.dvdtype = dvdtype;
		this.singer = singer;
		this.dvdName = dvdName;
		this.dvdIconSrc = dvdIconSrc;
		this.songs = songs;
		this.dvddetailses = dvddetailses;
	}

	// Property accessors

	public Integer getDvdId() {
		return this.dvdId;
	}

	public void setDvdId(Integer dvdId) {
		this.dvdId = dvdId;
	}

	public Dvdstatus getDvdstatus() {
		return this.dvdstatus;
	}

	public void setDvdstatus(Dvdstatus dvdstatus) {
		this.dvdstatus = dvdstatus;
	}

	public Dvdtype getDvdtype() {
		return this.dvdtype;
	}

	public void setDvdtype(Dvdtype dvdtype) {
		this.dvdtype = dvdtype;
	}

	public Singer getSinger() {
		return this.singer;
	}

	public void setSinger(Singer singer) {
		this.singer = singer;
	}

	public String getDvdName() {
		return this.dvdName;
	}

	public void setDvdName(String dvdName) {
		this.dvdName = dvdName;
	}

	public String getDvdIconSrc() {
		return this.dvdIconSrc;
	}

	public void setDvdIconSrc(String dvdIconSrc) {
		this.dvdIconSrc = dvdIconSrc;
	}

	public Set getSongs() {
		return this.songs;
	}

	public void setSongs(Set songs) {
		this.songs = songs;
	}

	public Set getDvddetailses() {
		return this.dvddetailses;
	}

	public void setDvddetailses(Set dvddetailses) {
		this.dvddetailses = dvddetailses;
	}

}