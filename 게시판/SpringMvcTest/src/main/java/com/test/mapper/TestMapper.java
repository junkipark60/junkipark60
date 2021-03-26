package com.test.mapper;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.test.vo.TestVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("TestMapper")
public interface TestMapper {

	//데이터 리스트 불러오기
	public List<TestVO> getlist(TestVO testVO) throws SQLException,IOException ;

	//데이터 삽입
	public void insert(TestVO testVO) throws SQLException,IOException;
	
	//데이터 한개 읽어오기
	
	//데이터 삭제하기
	public void delete(int id) throws SQLException,IOException;
	//데이터 수정하기

	
	//데이터 한개 읽어오기
	public TestVO edit(int id) throws SQLException,IOException;

	public void update(TestVO testVO) throws SQLException,IOException;
  
}