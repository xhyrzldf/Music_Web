package com.jhdx.model.service;

import java.util.List;

import com.jhdx.model.entity.Dvd;
import com.jhdx.model.entity.Song;

public interface AlbumService {
	/**
	 * 查询前12张专辑,用于首页显示
	 * @return
	 */
	public List<Dvd> getFirst12DvdsService();
	/**
	 * 根据专辑id返回专辑里的歌曲
	 * @return
	 */
	public List<Song> getSongsInDvdsService(int dvdId);
	/**
	 * 根据专辑名字返回一个完整的专辑信息,一般用于点击专辑名进入专辑页面
	 * @param dvdName
	 * @return
	 */
	public Dvd getDvdDetailsByNameService(String dvdName);
	/**
	 * 获得所有专辑,返回一个专辑集合
	 * @return
	 */
	public List<Dvd> getAllDvdService();
	
	
}
