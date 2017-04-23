package com.jhdx.model.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.jhdx.model.dao.UserDao;
import com.jhdx.model.entity.User;
import com.jhdx.model.entity.Userstatus;

@Transactional
public class UserDaoImpl implements UserDao{
private SessionFactory sessionFactory;
	public boolean userLoginDao(User user) {
		boolean flag=false;
		String hqlString="from User as u where u.userName=? and u.userPassword=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, user.getUserName());
		query.setString(1, user.getUserPassword());
		if (query.list().size() != 0) {
			flag=true;
			User user2=(User) query.list().get(0);
			user.setUserId(user2.getUserId());
			user.setNickName(user2.getNickName());
			user.setUserIconSrc(user2.getUserIconSrc());
			user.setRole(user2.getRole());
			user.setUserstatus(user2.getUserstatus());
		}
		return flag;
	}
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void userRegisterDao(User user) throws Exception{
		getSession().save(user);
	}
	@Override
	public String getUserUuidByNameDao(User user) throws Exception{
		String uuid=null;
		String hqlString="select u.userAcode from User as u where u.userName=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, user.getUserName());
		uuid=(String) query.uniqueResult();
		return uuid;
	}
	@Override
	public int checkUserNameDao(String ajaxUserName) {
		String hqlString="select count(*) from User as u where u.userName=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, ajaxUserName);
		//这里不能写Int,因为底层是lang转成long类型,所以先转成number再转成int
		int number=((Number) query.uniqueResult()).intValue();
		return number;
	}
	@Override
	public int resetUserPwdDao(User user) throws Exception{
		String hqlString="update User as u set u.userPassword=? where u.userAcode=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, user.getUserPassword());
		query.setString(1, user.getUserAcode());
		int num=query.executeUpdate();
		return num;
	}
	@Override
	public int activeUserCountDao(User user) throws Exception {
		String hqlString="update User as u set u.userstatus.userStatusId=1 where u.userAcode=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, user.getUserAcode());
		int num=query.executeUpdate();
		return num;
	}
	@Override
	public User getUserByActiveMailDao(User user) {
		String hqlString="select u.userstatus.userStatusId from User as u where u.userAcode=?";
		Query query=getSession().createQuery(hqlString);
		query.setString(0, user.getUserAcode());
		Userstatus userstatus=new Userstatus();
		int num= ((Number)query.uniqueResult()).intValue();
		userstatus.setUserStatusId(num);
		user.setUserstatus(userstatus);
		return user;
	}

}
