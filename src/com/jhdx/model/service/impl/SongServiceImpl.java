package com.jhdx.model.service.impl;

import java.util.List;

import com.jhdx.model.dao.SongDao;
import com.jhdx.model.entity.Song;
import com.jhdx.model.entity.Songlist;
import com.jhdx.model.service.SongService;

public class SongServiceImpl implements SongService{
private SongDao songdao;
public SongDao getSongdao() {
	return songdao;
}
public void setSongdao(SongDao songdao) {
	this.songdao = songdao;
}
	@Override
	public Song getSongDetailsBySongNameService(Song song) {
		return songdao.getSongDetailsBySongNameDao(song);
	}
	@Override
	public List<Song> top5HotSongsService() {
		return songdao.top5HotSongsDao();
	}
	@Override
	public List<Song> top4IndexRankService(int first, int max) {
		return songdao.top4IndexRankDao(first, max);
	}
	@Override
	public List<Song> showUserLikeSongsService(int userId, String songListName) {
		return songdao.showUserLikeSongsDao(userId, songListName);
	}
	@Override
	public List<Song> showSongListSongsService(String songListName) {
		return songdao.showSongListSongsDao(songListName);
	}
	@Override
	public List<Song> showSingerAllSongsService(int singerId) {
		return songdao.showSingerAllSongsDao(singerId);
	}



}
