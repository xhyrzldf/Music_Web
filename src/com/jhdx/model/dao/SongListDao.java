package com.jhdx.model.dao;

import java.util.List;

import com.jhdx.model.entity.Songlist;

public interface SongListDao {
/**
 * 获得所有公共歌单列表
 * @return
 */
public List<Songlist> allSongListDao();
/**
 * 获得指定用户的歌单列表,包括公共歌单与私人歌单
 * @return
 */
public List<Songlist> allLikeSongListDao(int userId);
/**
 * 根据歌单名称获得歌单的相关信息
 * @param songListName
 * @return
 */
public Songlist showPlayListSongsByNameDao(String songListName);
}
