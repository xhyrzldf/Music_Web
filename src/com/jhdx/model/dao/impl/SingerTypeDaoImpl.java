package com.jhdx.model.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.jhdx.model.dao.SingerTypeDao;
import com.jhdx.model.entity.Singertype;

@Transactional
public class SingerTypeDaoImpl implements SingerTypeDao{
private SessionFactory sessionFactory;

public Session getSession() {
	return sessionFactory.getCurrentSession();
}

public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

@Override
public List<Singertype> showAllSingerTypeDao() {
	String hqlString="from Singertype";
	Query query=getSession().createQuery(hqlString);
	List<Singertype> tList=query.list();
	return tList;
}
}
