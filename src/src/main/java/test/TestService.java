package test;

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
