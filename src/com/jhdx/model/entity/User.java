package com.jhdx.model.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer userId;
	private Userstatus userstatus;
	private Role role;
	private String userName;
	private String userPassword;
	private String nickName;
	private String userIconSrc;
	private Integer userReport;
	private String userAcode;
	private Set songlists = new HashSet(0);
	private Set uploadsongs = new HashSet(0);
	private Set dowloadsongs = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(Userstatus userstatus, Role role, String userName, String userPassword, String nickName,
			String userIconSrc, Integer userReport, String userAcode, Set songlists, Set uploadsongs,
			Set dowloadsongs) {
		this.userstatus = userstatus;
		this.role = role;
		this.userName = userName;
		this.userPassword = userPassword;
		this.nickName = nickName;
		this.userIconSrc = userIconSrc;
		this.userReport = userReport;
		this.userAcode = userAcode;
		this.songlists = songlists;
		this.uploadsongs = uploadsongs;
		this.dowloadsongs = dowloadsongs;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Userstatus getUserstatus() {
		return this.userstatus;
	}

	public void setUserstatus(Userstatus userstatus) {
		this.userstatus = userstatus;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getNickName() {
		return this.nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getUserIconSrc() {
		return this.userIconSrc;
	}

	public void setUserIconSrc(String userIconSrc) {
		this.userIconSrc = userIconSrc;
	}

	public Integer getUserReport() {
		return this.userReport;
	}

	public void setUserReport(Integer userReport) {
		this.userReport = userReport;
	}

	public String getUserAcode() {
		return this.userAcode;
	}

	public void setUserAcode(String userAcode) {
		this.userAcode = userAcode;
	}

	public Set getSonglists() {
		return this.songlists;
	}

	public void setSonglists(Set songlists) {
		this.songlists = songlists;
	}

	public Set getUploadsongs() {
		return this.uploadsongs;
	}

	public void setUploadsongs(Set uploadsongs) {
		this.uploadsongs = uploadsongs;
	}

	public Set getDowloadsongs() {
		return this.dowloadsongs;
	}

	public void setDowloadsongs(Set dowloadsongs) {
		this.dowloadsongs = dowloadsongs;
	}

}