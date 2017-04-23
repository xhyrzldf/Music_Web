package com.jhdx.model.service;

import java.util.List;

import com.jhdx.model.entity.Song;
import com.jhdx.model.entity.Songlist;

public interface SongService {
	/**
	 * 根据歌曲名获取歌曲具体信息,返回song
	 * @param song
	 * @return
	 */
	public Song getSongDetailsBySongNameService(Song song);
	/**
	 * 总排行热度前5的歌曲,用于搜索框的热度显示
	 * @return
	 */
	public List<Song> top5HotSongsService();
	/**
	 * 返回一定名次的歌曲,用于排行榜显示(简化方法)...
	 * @param first
	 * @param max
	 * @return
	 */
	public List<Song> top4IndexRankService(int first,int max);
	/**
	 * 查询指定用户的指定名称歌单
	 * @param userId
	 * @param songListStatus
	 * @return
	 */
	public List<Song> showUserLikeSongsService(int userId,String songListName);
	/**
	 * 查询指定名称的歌单,不限用户
	 * @param songListName
	 * @return 该歌单的歌曲
	 */
	public List<Song> showSongListSongsService(String songListName);
	/**
	 * 根据歌手id查询出该歌手的所有歌曲
	 * @param songId
	 * @return
	 */
	public List<Song> showSingerAllSongsService(int singerId);

}
