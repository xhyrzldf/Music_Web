package com.jhdx.model.dao;

import java.util.List;

import com.jhdx.model.entity.Singer;

public interface SingerDao {
	/**
	 * 用于分页显示歌手数据
	 * @param page 页码
	 * @param pageSize 每页条数
 	 * @return Singer集合
	 */
public List<Singer> showSingerByPageDao(int page,int pageSize);
/**
 * 获得所有歌手数量,用于分页计算的
 * @return
 */
public int countAllSingerDao();
/**
 * 获得所有歌手对象
 * @return 歌手集合
 */
public List<Singer> showAllSingerDao();
/**
 * 根据歌手名称获得歌手信息
 * @param singerName
 * @return
 */
public Singer showSingerSongsByNameDao(String singerName);
}
