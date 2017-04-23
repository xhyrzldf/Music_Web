package com.jhdx.model.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Singer entity. @author MyEclipse Persistence Tools
 */

public class Singer implements java.io.Serializable {

	// Fields

	private Integer singerId;
	private Singertype singertype;
	private String singerName;
	private String singerNickName;
	private String singerIconSrc;
	private String singerDes;
	private Set songs = new HashSet(0);
	private Set dvds = new HashSet(0);

	// Constructors

	/** default constructor */
	public Singer() {
	}

	/** full constructor */
	public Singer(Singertype singertype, String singerName, String singerNickName, String singerIconSrc,
			String singerDes, Set songs, Set dvds) {
		this.singertype = singertype;
		this.singerName = singerName;
		this.singerNickName = singerNickName;
		this.singerIconSrc = singerIconSrc;
		this.singerDes = singerDes;
		this.songs = songs;
		this.dvds = dvds;
	}

	// Property accessors

	public Integer getSingerId() {
		return this.singerId;
	}

	public void setSingerId(Integer singerId) {
		this.singerId = singerId;
	}

	public Singertype getSingertype() {
		return this.singertype;
	}

	public void setSingertype(Singertype singertype) {
		this.singertype = singertype;
	}

	public String getSingerName() {
		return this.singerName;
	}

	public void setSingerName(String singerName) {
		this.singerName = singerName;
	}

	public String getSingerNickName() {
		return this.singerNickName;
	}

	public void setSingerNickName(String singerNickName) {
		this.singerNickName = singerNickName;
	}

	public String getSingerIconSrc() {
		return this.singerIconSrc;
	}

	public void setSingerIconSrc(String singerIconSrc) {
		this.singerIconSrc = singerIconSrc;
	}

	public String getSingerDes() {
		return this.singerDes;
	}

	public void setSingerDes(String singerDes) {
		this.singerDes = singerDes;
	}

	public Set getSongs() {
		return this.songs;
	}

	public void setSongs(Set songs) {
		this.songs = songs;
	}

	public Set getDvds() {
		return this.dvds;
	}

	public void setDvds(Set dvds) {
		this.dvds = dvds;
	}

}