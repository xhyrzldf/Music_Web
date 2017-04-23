package com.jhdx.model.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.jhdx.model.dao.AlbumDao;
import com.jhdx.model.entity.Dvd;
import com.jhdx.model.entity.Song;

@Transactional
public class AlbumDaoImpl implements AlbumDao{
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<Dvd> getFirst12DvdsDao() {
		List<Dvd> dList=new ArrayList<Dvd>();
		String hqlString="from Dvd";
		Query query=getSession().createQuery(hqlString);
		query.setFirstResult(0);
		query.setMaxResults(12);
		dList=query.list();
		return dList;
	}
	@Override
	public List<Song> getSongsInDvdsDao(int dvdId) {
		String hqlString="from Song as s where s.dvd.dvdId=?";
		Query query=getSession().createQuery(hqlString);
		query.setInteger(0, dvdId);
		List<Song> sList=query.list();
		return sList;
	}
	@Override
	public Dvd getDvdDetailsByNameDao(String dvdName) {
		String hqlString="from Dvd as d where d.dvdName=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, dvdName);
		Dvd dvd=new Dvd();
		dvd=(Dvd) query.uniqueResult();
		return dvd;
	}
	@Override
	public List<Dvd> getAllDvdDao() {
		String hqlString="from Dvd";
		Query query=getSession().createQuery(hqlString);
		List<Dvd> dList=query.list();
		return dList;
	}



}
