package com.jhdx.wheels;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class ApplicationWheel {
public static Map<String, Object> getApplication(){
	return ActionContext.getContext().getApplication();
}
}
