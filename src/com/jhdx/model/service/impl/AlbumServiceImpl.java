package com.jhdx.model.service.impl;

import java.util.List;

import com.jhdx.model.dao.AlbumDao;
import com.jhdx.model.entity.Dvd;
import com.jhdx.model.entity.Song;
import com.jhdx.model.service.AlbumService;

public class AlbumServiceImpl implements AlbumService{
private AlbumDao albumdao;

	public AlbumDao getAlbumdao() {
		return albumdao;
	}
	public void setAlbumdao(AlbumDao albumdao) {
		this.albumdao = albumdao;
	}
	@Override
	public List<Dvd> getFirst12DvdsService() {
		return albumdao.getFirst12DvdsDao();
	}
	@Override
	public List<Song> getSongsInDvdsService(int dvdId) {
		return albumdao.getSongsInDvdsDao(dvdId);
	}
	@Override
	public Dvd getDvdDetailsByNameService(String dvdName) {
		return albumdao.getDvdDetailsByNameDao(dvdName);
	}
	@Override
	public List<Dvd> getAllDvdService() {
		return albumdao.getAllDvdDao();
	}

}
