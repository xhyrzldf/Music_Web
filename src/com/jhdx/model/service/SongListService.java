package com.jhdx.model.service;

import java.util.List;

import com.jhdx.model.entity.Songlist;

public interface SongListService {
	/**
	 * 获得所有歌单列表
	 * @return
	 */
	public List<Songlist> allSongListService();
	/**
	 * 获得指定用户的歌单列表,包括公共歌单与私人歌单
	 * @return
	 */
	public List<Songlist> allLikeSongListService(int userId);
	/**
	 * 根据歌单名称获得歌单的相关信息
	 * @param songListName
	 * @return
	 */
	public Songlist showPlayListSongsByNameService(String songListName);
}
