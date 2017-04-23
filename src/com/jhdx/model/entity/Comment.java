package com.jhdx.model.entity;

/**
 * Comment entity. @author MyEclipse Persistence Tools
 */

public class Comment implements java.io.Serializable {

	// Fields

	private Integer commentId;
	private Song song;
	private Integer commentFavour;
	private String commentText;
	private Integer doubleCommentId;

	// Constructors

	/** default constructor */
	public Comment() {
	}

	/** full constructor */
	public Comment(Song song, Integer commentFavour, String commentText, Integer doubleCommentId) {
		this.song = song;
		this.commentFavour = commentFavour;
		this.commentText = commentText;
		this.doubleCommentId = doubleCommentId;
	}

	// Property accessors

	public Integer getCommentId() {
		return this.commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public Song getSong() {
		return this.song;
	}

	public void setSong(Song song) {
		this.song = song;
	}

	public Integer getCommentFavour() {
		return this.commentFavour;
	}

	public void setCommentFavour(Integer commentFavour) {
		this.commentFavour = commentFavour;
	}

	public String getCommentText() {
		return this.commentText;
	}

	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}

	public Integer getDoubleCommentId() {
		return this.doubleCommentId;
	}

	public void setDoubleCommentId(Integer doubleCommentId) {
		this.doubleCommentId = doubleCommentId;
	}

}