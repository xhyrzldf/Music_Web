package com.jhdx.model.service.impl;

import java.util.List;

import com.jhdx.model.dao.SongListDao;
import com.jhdx.model.entity.Songlist;
import com.jhdx.model.service.SongListService;

public class SongListServiceImpl implements SongListService{
private SongListDao songListdao;

public SongListDao getSongListdao() {
	return songListdao;
}

public void setSongListdao(SongListDao songListdao) {
	this.songListdao = songListdao;
}

@Override
public List<Songlist> allSongListService() {
	return songListdao.allSongListDao();
}

@Override
public List<Songlist> allLikeSongListService(int userId) {
	return songListdao.allLikeSongListDao(userId);
}

@Override
public Songlist showPlayListSongsByNameService(String songListName) {
	return songListdao.showPlayListSongsByNameDao(songListName);
}
}
