package com.jhdx.wheels;

import com.jhdx.model.entity.Role;
import com.jhdx.model.entity.User;
import com.jhdx.model.entity.Userstatus;

public class InitWheel {
	/**
	 * 初始化用户信息 用于注册
	 * @param user
	 */
public static void initUser(User user){
	Role role=new Role();
	role.setRoleId(1);
	Userstatus userstatus=new Userstatus();
	userstatus.setUserStatusId(0);
	user.setUserReport(0);
	user.setRole(role);
	user.setUserstatus(userstatus);
}
}
