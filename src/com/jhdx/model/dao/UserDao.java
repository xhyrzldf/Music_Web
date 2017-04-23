package com.jhdx.model.dao;

import com.jhdx.model.entity.User;

public interface UserDao {
/**
 * 检测用户登录时的用户名密码是否正确
 * @param user
 * @return
 */
public boolean userLoginDao(User user);
/**
 * 用户注册，邮箱注册,抛出异常,在action中处理异常
 * @param user
 */
public void userRegisterDao(User user) throws Exception;
/**
 * 根据用户名字获得UUID,用于密码找回的处理,抛出异常,在action中处理异常
 * @param user
 * @return
 */
public String getUserUuidByNameDao(User user) throws Exception;
/**
 * ajax验证用户名是否重复,用于用户注册和密码找回
 * @param ajaxUserName
 * @return 存在返回1,不存在返回0
 */
public int checkUserNameDao(String ajaxUserName);
/**
 * 根据唯一标识码重置用户密码
 * @param user
 */
public int resetUserPwdDao(User user) throws Exception;
/**
 * 激活用户账户,使得账号状态由0(未激活)到1(活跃)
 * @param user
 * @return 返回改变的行数,正常情况下都为1
 * @throws Exception
 */
public int activeUserCountDao(User user) throws Exception;
/**
 * 根据激活邮件的user查询到user的状态值并且赋值给user
 * @return
 */
public User getUserByActiveMailDao(User user);
}


