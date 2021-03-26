package com.test.serviceimpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import com.test.mapper.TestMapper;
import com.test.service.TestService;
import com.test.vo.TestVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

public class TestServiceImpl extends EgovAbstractServiceImpl implements TestService {
	
	@Resource(name="TestMapper")
	private TestMapper testMapper;

	@Override
	public List<TestVO> getlist(TestVO testVO) throws SQLException, IOException {
		return testMapper.getlist(testVO);
	}

	@Override
	public void insert(TestVO testVO) throws SQLException, IOException {
		testMapper.insert(testVO);
		
	}

	@Override
	public void delete(int id) throws SQLException,IOException {
		testMapper.delete(id);
		
	}


	@Override
	public TestVO edit(int id) throws SQLException, IOException {
		
		return testMapper.edit(id);
		
	}

	@Override
	public void update(TestVO testVO) throws SQLException, IOException {
		
		 testMapper.update(testVO);
	}
	

}
