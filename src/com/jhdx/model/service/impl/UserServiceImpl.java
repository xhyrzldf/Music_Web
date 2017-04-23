package com.jhdx.model.service.impl;

import com.jhdx.model.dao.UserDao;
import com.jhdx.model.entity.User;
import com.jhdx.model.service.UserService;
import com.jhdx.wheels.InitWheel;
import com.jhdx.wheels.Md5Encryption;

public class UserServiceImpl implements UserService {
	private UserDao userdao;
	public UserDao getUserdao() {
		return userdao;
	}
	public void setUserdao(UserDao userdao) {
		this.userdao = userdao;
	}

	@Override
	public boolean userLoginService(User user) {
		String pwd=Md5Encryption.MD5(user.getUserPassword());//对密码md5加密
		user.setUserPassword(pwd);
		return userdao.userLoginDao(user);
	}

	@Override
	public void userRegisterService(User user) throws Exception {
		InitWheel.initUser(user);	//初始化默认值
		String pwd=Md5Encryption.MD5(user.getUserPassword());//对密码md5加密
		user.setUserPassword(pwd);
		userdao.userRegisterDao(user);
	}

	@Override
	public String getUserUuidByNameService(User user) throws Exception {
		return userdao.getUserUuidByNameDao(user);
	}
	@Override
	public int checkUserNameDao(String ajaxUserName) {
		return userdao.checkUserNameDao(ajaxUserName);
	}
	@Override
	public int resetUserPwdService(User user) throws Exception {
		String pwd=Md5Encryption.MD5(user.getUserPassword());//Md5加密密码
		user.setUserPassword(pwd);
		return userdao.resetUserPwdDao(user);
	}
	@Override
	public int activeUserCountService(User user) throws Exception {
		return userdao.activeUserCountDao(user);
	}
	@Override
	public User getUserByActiveMailService(User user) {
		return userdao.getUserByActiveMailDao(user);
	}

}
