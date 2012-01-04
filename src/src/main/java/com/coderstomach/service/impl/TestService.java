package com.coderstomach.service.impl;

import com.coderstomach.service.*;
import com.coderstomach.dao.*;

public class TestService implements ITestService {
	private ITestDao dao;
	
	public ITestDao getDao() {
		return dao;
	}

	public void setDao(ITestDao dao) {
		this.dao = dao;
	}

	@Override
	public void insert() {
		// TODO Auto-generated method stub
		dao.insert();
	}

}
