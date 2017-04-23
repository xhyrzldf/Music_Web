package com.jhdx.model.entity;

/**
 * Dvddetails entity. @author MyEclipse Persistence Tools
 */

public class Dvddetails implements java.io.Serializable {

	// Fields

	private Integer dvdDetailsId;
	private Song song;
	private Dvd dvd;

	// Constructors

	/** default constructor */
	public Dvddetails() {
	}

	/** full constructor */
	public Dvddetails(Song song, Dvd dvd) {
		this.song = song;
		this.dvd = dvd;
	}

	// Property accessors

	public Integer getDvdDetailsId() {
		return this.dvdDetailsId;
	}

	public void setDvdDetailsId(Integer dvdDetailsId) {
		this.dvdDetailsId = dvdDetailsId;
	}

	public Song getSong() {
		return this.song;
	}

	public void setSong(Song song) {
		this.song = song;
	}

	public Dvd getDvd() {
		return this.dvd;
	}

	public void setDvd(Dvd dvd) {
		this.dvd = dvd;
	}

}