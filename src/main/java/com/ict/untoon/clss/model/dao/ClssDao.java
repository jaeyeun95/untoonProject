package com.ict.untoon.clss.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.untoon.clss.model.vo.Clss;

@Repository("clssDao")
public class ClssDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ClssDao() {}
	
	public ArrayList<Clss> selectList() {
		List<Clss> list = sqlSession.selectList("clssMapper.selectAll");
		 
		return (ArrayList<Clss>)list;
	}

	// 강사 클래스 상세보기
	public Clss selectOne(int cid) {
		return sqlSession.selectOne("clssMapper.selectClss", cid);
	}


}
