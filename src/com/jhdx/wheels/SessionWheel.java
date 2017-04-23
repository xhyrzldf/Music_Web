package com.jhdx.wheels;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class SessionWheel {
public static Map<String, Object> getSession(){
	return ActionContext.getContext().getSession();
}
}
