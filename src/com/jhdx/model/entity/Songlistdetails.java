package com.jhdx.model.entity;

/**
 * Songlistdetails entity. @author MyEclipse Persistence Tools
 */

public class Songlistdetails implements java.io.Serializable {

	// Fields

	private Integer songListDetailsId;
	private Song song;
	private Songlist songlist;

	// Constructors

	/** default constructor */
	public Songlistdetails() {
	}

	/** full constructor */
	public Songlistdetails(Song song, Songlist songlist) {
		this.song = song;
		this.songlist = songlist;
	}

	// Property accessors

	public Integer getSongListDetailsId() {
		return this.songListDetailsId;
	}

	public void setSongListDetailsId(Integer songListDetailsId) {
		this.songListDetailsId = songListDetailsId;
	}

	public Song getSong() {
		return this.song;
	}

	public void setSong(Song song) {
		this.song = song;
	}

	public Songlist getSonglist() {
		return this.songlist;
	}

	public void setSonglist(Songlist songlist) {
		this.songlist = songlist;
	}

}