package com.jhdx.model.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.jhdx.model.dao.SingerDao;
import com.jhdx.model.entity.Singer;

@Transactional
public class SingerDaoImpl implements SingerDao{
private SessionFactory sessionFactory;

public Session getSession() {
	return sessionFactory.getCurrentSession();
}
public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

	@Override
	public List<Singer> showSingerByPageDao(int page, int pageSize) {
		List<Singer> sList=new ArrayList<Singer>();
		int num=(page-1)*pageSize;
		String hqlString="from Singer";
		Query query=getSession().createQuery(hqlString);
		query.setFirstResult(num);
		query.setMaxResults(pageSize);
		sList=query.list();
		return sList;
	}
	@Override
	public int countAllSingerDao() {
		String hqlString="select count(*) from Singer";
		Query query=getSession().createQuery(hqlString);
		int num=((Number)query.uniqueResult()).intValue();
		return num;
	}
	@Override
	public List<Singer> showAllSingerDao() {
		String hqlString="from Singer";
		Query query=getSession().createQuery(hqlString);
		List<Singer> sList=query.list();
		return sList;
	}
	@Override
	public Singer showSingerSongsByNameDao(String singerName) {
		String hqlString="from Singer as s where s.singerName=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, singerName);
		Singer singer=new Singer();
		singer=(Singer) query.uniqueResult();
		return singer;
	}


}
