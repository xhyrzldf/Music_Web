package com.jhdx.control.action;

import java.util.HashMap;
import java.util.Map;

import com.jhdx.model.entity.PlayList;

public class AjaxTestAction {
private PlayList pList;
private String result;
private Map<String, Object> dataMap;
public String ajaxTest(){
	dataMap=new HashMap<String, Object>();
	pList=new PlayList();
	pList.setTitle("久石让");
	pList.setArtist("哈哈");
	pList.setMp3("http://p2.music.126.net/lkK28FliZQJwQ5r1XAZ-KA==/3285340747760477.mp3");
	pList.setCover("http://p4.music.126.net/7VJn16zrictuj5kdfW1qHA==/3264450024433083.jpg?param=106x106");
	dataMap.put("pList", pList);
	return "success";
}
public String getResult() {
	return result;
}
public void setResult(String result) {
	this.result = result;
}
public Map<String, Object> getDataMap() {
	return dataMap;
}
public void setDataMap(Map<String, Object> dataMap) {
	this.dataMap = dataMap;
}
}
