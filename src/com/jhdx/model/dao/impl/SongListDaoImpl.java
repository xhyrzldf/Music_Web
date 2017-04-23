package com.jhdx.model.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.jhdx.model.dao.SongListDao;
import com.jhdx.model.entity.Songlist;

@Transactional
public class SongListDaoImpl implements SongListDao{
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Songlist> allSongListDao() {
		String hqlString="from Songlist as s where s.songListStatus=1";
		Query query=getSession().createQuery(hqlString);
		List<Songlist> songlists=query.list();
		return songlists;
	}

	@Override
	public List<Songlist> allLikeSongListDao(int userId) {
		String hqlString="from Songlist as s where s.user.userId=?";
		Query query=getSession().createQuery(hqlString);
		query.setInteger(0, userId);
		List<Songlist> sList=query.list();
		return sList;
	}

	@Override
	public Songlist showPlayListSongsByNameDao(String songListName) {
		String hqlString="from Songlist as s where s.songListName=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, songListName);
		Songlist songlist=new Songlist();
		songlist=(Songlist) query.uniqueResult();
		return songlist;
	}
}
