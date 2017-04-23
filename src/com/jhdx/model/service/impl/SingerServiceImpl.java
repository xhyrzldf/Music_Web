package com.jhdx.model.service.impl;

import java.util.List;

import com.jhdx.model.dao.SingerDao;
import com.jhdx.model.entity.Singer;
import com.jhdx.model.service.SingerService;

public class SingerServiceImpl implements SingerService{
	private SingerDao singerdao;
	public SingerDao getSingerdao() {
		return singerdao;
	}
	public void setSingerdao(SingerDao singerdao) {
		this.singerdao = singerdao;
	}
	@Override
	public List<Singer> showSingerByPageService(int page, int pageSize) {
		return singerdao.showSingerByPageDao(page, pageSize);
	}

	@Override
	public int countAllSingerService() {
		return singerdao.countAllSingerDao();
	}
	@Override
	public List<Singer> showAllSingerService() {
		return singerdao.showAllSingerDao();
	}
	@Override
	public Singer showSingerSongsByNameDao(String singerName) {
		return singerdao.showSingerSongsByNameDao(singerName);
	}

}
