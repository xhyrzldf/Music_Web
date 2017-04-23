package com.jhdx.model.dao;

import java.util.List;

import com.jhdx.model.entity.Song;

public interface SongDao {
	/**
	 * 根据歌曲名称获得歌曲信息
	 * @return
	 */
public Song getSongDetailsBySongNameDao(Song song);
/**
 * 总排行热度前5的歌曲,用于搜索框的热度显示
 * @return
 */
public List<Song> top5HotSongsDao();
/**
 * 返回一定名次的歌曲,用于排行榜显示(简化方法)...
 * @param first
 * @param max
 * @return
 */
public List<Song> top4IndexRankDao(int first,int max);
/**
 * 查询指定用户的指定名称歌单
 * @param userId
 * @param songListStatus
 * @return
 */
public List<Song> showUserLikeSongsDao(int userId,String songListName);
/**
 * 查询指定名称的歌单,不限用户
 * @param songListName
 * @return 该歌单的歌曲
 */
public List<Song> showSongListSongsDao(String songListName);
/**
 * 根据歌手id查询出该歌手的所有歌曲
 * @param songId
 * @return
 */
public List<Song> showSingerAllSongsDao(int singerId);
}
