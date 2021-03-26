package com.test.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Service;

import com.test.vo.TestVO;

@Service(value="testService")
public interface TestService {

	public List<TestVO> getlist(TestVO testVO) throws SQLException,IOException ;

	public void insert(TestVO testVO) throws SQLException,IOException;

	public void delete(int id) throws SQLException, IOException;

	public TestVO edit(int id) throws SQLException,IOException;

	public void update(TestVO testVO) throws SQLException,IOException;

}
