package com.jhdx.control.action;

import java.util.UUID;

import com.jhdx.model.entity.User;
import com.jhdx.model.service.UserService;
import com.jhdx.wheels.PwdBackMailThread;
import com.jhdx.wheels.RegisterMailThread;
import com.jhdx.wheels.SessionWheel;

public class UserAction extends SessionWheel{
private User user;
private boolean ajaxFlag;
private UserService userService;
	/**
	 * 用户登录action
	 * @return
	 */
public String userLogin(){
	boolean flag=userService.userLoginService(user);
	if (flag) {
		if (user.getUserstatus().getUserStatusId() == 0) {
			getSession().put("errorMessage", "登录失败,您的账号还未激活<br>请去邮箱进行激活并关闭本页面回到主页或等待自动跳转<br>");
			return "error";
		}
		getSession().put("user", user);
		if (user.getRole().getRoleId() == 3) {
			return "manger";
		}
		return "index";
	}
	getSession().put("errorMessage", "登录失败,账号名密码错误或服务器正忙<br>请重新操作并关闭本页面回到主页或等待自动跳转<br>");
	return "error";
}
	/**
	 * 用户注册action,根据是否捕获到异常来决定返回页面,同时session里存放提示信息
	 * @return
	 */
public String userRegister(){
	try {
		String acode=UUID.randomUUID().toString().replaceAll("-", "");//初始化uuid,因为邮件发送需要这个,所以写在这
		user.setUserAcode(acode);
		new RegisterMailThread(user).start();
		userService.userRegisterService(user);
	} catch (Exception e) {
		e.printStackTrace();
		getSession().put("errorMessage", "注册失败,服务器正忙<br>请重新操作并关闭本页面回到主页或等待自动跳转<br>");
		return "error";
	}
	getSession().put("successMessage", "注册成功,请前往邮箱激活账号<br>如未收到请耐心等待一会,本页面将自动关闭<br>");
	return "success";
}
/**
 * 密码找回,发送一封找回邮件给用户
 * @return
 */
public String userPwdBack(){
	try {
		String uuid=userService.getUserUuidByNameService(user);
		user.setUserAcode(uuid);
		new PwdBackMailThread(user).start();
	} catch (Exception e) {
		e.printStackTrace();
		getSession().put("errorMessage", "操作失败,服务器正忙<br>请重新操作并关闭本页面回到主页或等待自动跳转<br>");
		return "error";
	}
	getSession().put("successMessage", "操作成功,请耐心等待邮箱邮件,如长时间未收到请重新操作并确认账号正确<br>请关闭本页面回到主页或等待自动跳转<br>");
	return "success";
}
/**
 * ajax检测用户账号是否存在,用于密码找回验证,这里是验证账号存在,validate里Message提示是判断false才提示
 * 用户密码找回要求账号必须存在,所以不存在就返回false处理message语句,与注册的逻辑恰好相反
 * @return 存在ajaxFlag赋值true,不存在赋值false
 */
public String checkNameForPwd(){
	int num=userService.checkUserNameDao(user.getUserName());
	if (num == 0) {
		ajaxFlag=false;
	}else {
		ajaxFlag=true;
	}
	return "ajax";
}
/**
 * ajax检测用户账号是否存在,用于用户注册,存在结果返回1,ajaxFlag返回False
 * @return 存在ajaxFlag赋值false,不存在赋值true
 */
public String checkNameForRegister(){
	int num=userService.checkUserNameDao(user.getUserName());
	if (num == 0) {
		ajaxFlag=true;
	}else {
		ajaxFlag=false;
	}
	return "ajax";
}
/**
 * 用户重置密码操作,捕获到异常或者没有影响行数都跳到错误页面
 * @return
 */
public String resetUserPwd(){
	try {
		int num=userService.resetUserPwdService(user);
		if (num == 0) {
			getSession().put("errorMessage", "密码重置失败<br>请重新操作并关闭本页面回到主页或等待自动跳转<br>");
			return "error";
		}
	} catch (Exception e) {
		e.printStackTrace();
		getSession().put("errorMessage", "密码重置失败,服务器正忙<br>请重新操作并关闭本页面回到主页或等待自动跳转<br>");
		return "error";
	}
	getSession().put("successMessage", "密码重置成功<br>请重新登录并关闭本页面回到主页或等待自动跳转<br>");
	return "success";
}
/**
 * 用户激活action,根据不同情况返回不同提示语句
 * @return
 */
public String activeUserAcode(){
	userService.getUserByActiveMailService(user);
	if (user.getUserstatus().getUserStatusId() == 1) {
		getSession().put("errorMessage", "操作失败,不要重复激活<br>请关闭本页面回到主页或等待自动跳转<br>");
		return "error";
	}
	try {
		int num=userService.activeUserCountService(user);
		if (num == 0) {
			getSession().put("errorMessage", "操作失败,服务器异常<br>请关闭本页面回到主页或等待自动跳转<br>");
			return "error";
		}
	} catch (Exception e) {
		e.printStackTrace();
		getSession().put("errorMessage", "操作失败,服务器异常<br>请关闭本页面回到主页或等待自动跳转<br>");
		return "error";
	}
	getSession().put("successMessage", "激活成功!<br>请关闭本页面回到主页或等待自动跳转<br>");
	return "success";
}

public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}

public UserService getUserService() {
	return userService;
}

public void setUserService(UserService userService) {
	this.userService = userService;
}
public boolean isAjaxFlag() {
	return ajaxFlag;
}
public void setAjaxFlag(boolean ajaxFlag) {
	this.ajaxFlag = ajaxFlag;
}
}
