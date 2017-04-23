package com.jhdx.model.dao;

import java.util.List;

import com.jhdx.model.entity.Dvd;
import com.jhdx.model.entity.Song;

public interface AlbumDao {
	/**
	 * 查询前12张专辑相关信息,用于首页显示
	 * @return
	 */
public List<Dvd> getFirst12DvdsDao();
/**
 * 根据专辑id返回专辑里的歌曲
 * @return
 */
public List<Song> getSongsInDvdsDao(int dvdId);
/**
 * 根据专辑名字返回一个完整的专辑信息,一般用于点击专辑名进入专辑页面
 * @param dvdName
 * @return
 */
public Dvd getDvdDetailsByNameDao(String dvdName);
/**
 * 获得所有专辑,返回一个专辑集合
 * @return
 */
public List<Dvd> getAllDvdDao();
}
