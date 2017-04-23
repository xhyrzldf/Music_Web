package com.jhdx.model.service;

import java.util.List;

import com.jhdx.model.entity.Singer;
import com.jhdx.model.entity.Song;

public interface SingerService {
	/**
	 * 用于分页显示歌手数据
	 * @param page 页码
	 * @param pageSize 每页条数
 	 * @return Singer集合
	 */
public List<Singer> showSingerByPageService(int page,int pageSize);
/**
 * 获得所有歌手数量,用于分页计算的
 * @return
 */
public int countAllSingerService();
/**
 * 获得所有歌手对象
 * @return 歌手集合
 */
public List<Singer> showAllSingerService();
/**
 * 根据歌手名称获得歌手信息
 * @param singerName
 * @return
 */
public Singer showSingerSongsByNameDao(String singerName);
}
