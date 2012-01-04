package com.coderstomach.dao.impl;

import com.coderstomach.bean.*;
import com.coderstomach.dao.*;
import org.apache.ibatis.session.SqlSession;

public class TestDao implements ITestDao{
	private SqlSession session;
	
	public SqlSession getSession() {
		return session;
	}

	public void setSession(SqlSession session) {
		this.session = session;
	}

	public void insert(){
		Test test=new Test();
		test.setId(1);
		test.setName("1");
		session.insert("com.test.TestTable.insert",test);
	}
}
