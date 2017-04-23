package com.jhdx.control.action;

import java.util.List;

import com.jhdx.model.entity.Singertype;
import com.jhdx.model.service.SingerTypeService;
import com.jhdx.wheels.SessionWheel;

public class SingerTypeAction extends SessionWheel{
private SingerTypeService singerTypeService;

public SingerTypeService getSingerTypeService() {
	return singerTypeService;
}

public void setSingerTypeService(SingerTypeService singerTypeService) {
	this.singerTypeService = singerTypeService;
}
public String showAllSingerType(){
	List<Singertype> tList=singerTypeService.showAllSingerTypeService();
	getSession().put("allSingerType", tList);
	return "success";
}
}
