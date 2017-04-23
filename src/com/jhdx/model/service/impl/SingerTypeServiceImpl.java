package com.jhdx.model.service.impl;

import java.util.List;

import com.jhdx.model.dao.SingerTypeDao;
import com.jhdx.model.entity.Singertype;
import com.jhdx.model.service.SingerTypeService;

public class SingerTypeServiceImpl implements SingerTypeService{
private SingerTypeDao singertypedao;

public SingerTypeDao getSingertypedao() {
	return singertypedao;
}

public void setSingertypedao(SingerTypeDao singertypedao) {
	this.singertypedao = singertypedao;
}

@Override
public List<Singertype> showAllSingerTypeService() {
	return singertypedao.showAllSingerTypeDao();
}
}
