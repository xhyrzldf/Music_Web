package com.jhdx.model.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.jhdx.model.dao.SongDao;
import com.jhdx.model.entity.Song;

@Transactional
public class SongDaoImpl implements SongDao{
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public Song getSongDetailsBySongNameDao(Song song) {
		String hqlString="from Song as s where s.songName=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, song.getSongName());
		song=(Song) query.uniqueResult();
		return song;
	}
	@Override
	public List<Song> top5HotSongsDao() {
		String hqlString="from Song as s order by s.hot desc";
		Query query=getSession().createQuery(hqlString);
		query.setFirstResult(0);
		query.setMaxResults(5);
		List<Song> sList=query.list();
		return sList;
	}
	@Override
	public List<Song> top4IndexRankDao(int first, int max) {
		String hqlString="from Song as s order by s.hot desc";
		Query query=getSession().createQuery(hqlString);
		query.setFirstResult(first);
		query.setMaxResults(max);
		List<Song> sList=query.list();
		return sList;
	}
	@Override
	public List<Song> showUserLikeSongsDao(int userId,String songListName) {
		String hqlString="select s.song from Songlistdetails as s where s.songlist.user.userId=? and s.songlist.songListName=?";
		Query query=getSession().createQuery(hqlString);
		query.setInteger(0, userId);
		query.setString(1, songListName);
		List<Song> sList=query.list();
		return sList;
	}
	@Override
	public List<Song> showSongListSongsDao(String songListName) {
		String hqlString="select s.song from Songlistdetails as s where s.songlist.songListName=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, songListName);
		List<Song> sList=query.list();
		return sList;
	}
	@Override
	public List<Song> showSingerAllSongsDao(int singerId) {
		String hqlString="from Song as s where s.singer.singerId=?";
		Query query=getSession().createQuery(hqlString);
		query.setInteger(0, singerId);
		List<Song> sList=query.list();
		return sList;
	}

}
