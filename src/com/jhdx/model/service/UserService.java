package com.jhdx.model.service;

import com.jhdx.model.entity.User;

public interface UserService {
	/**
	 * 用于检测用户账号密码登录服务,对密码加密
	 * @param user
	 * @return
	 */
	public boolean userLoginService(User user);
	/**
	 * 用户注册，对密码进行加密，同时生成16位uuid标识码
	 * @param user
	 * @throws Exception 抛出异常,在action中处理异常
	 */
	public void userRegisterService(User user) throws Exception;
	/**
	 * 根据用户名字获得UUID,用于密码找回的处理
	 * @param user
	 * @return
	 * @throws Exception 抛出异常,在action中处理异常
	 */
	public String getUserUuidByNameService(User user) throws Exception;
	/**
	 * ajax验证用户名是否重复,用于用户注册和密码找回
	 * @param ajaxUserName
	 * @return 存在返回1,不存在返回0
	 */
	public int checkUserNameDao(String ajaxUserName);
	/**
	 * 根据用户唯一标识码用来重置密码,服务层做密码加密处理
	 * @param user
	 * @return 返回受影响的行数
	 * @throws Exception 抛出异常,在action中处理异常
	 */
	public int resetUserPwdService(User user) throws Exception;
	/**
	 * 激活用户账号状态,由0(未激活)变成1(活跃)
	 * @param user
	 * @return 返回值为受影响的行数,一般为1
	 * @throws Exception
	 */
	public int activeUserCountService(User user) throws Exception;
	/**
	 * 根据激活邮件的UUID获得用户的状态,并返回一个USER对象
	 * @return
	 */
	public User getUserByActiveMailService(User	 user);
	
}
