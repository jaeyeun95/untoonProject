package com.ict.untoon.clss.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.untoon.clss.model.dao.ClssDao;
import com.ict.untoon.clss.model.vo.Clss;

@Service("clssService")
public class ClssServiceImpl implements ClssService{
	@Autowired
	private ClssDao cDao;

	@Override
	public ArrayList<Clss> tClssList() {	// 강사 리스트 조회용
		return cDao.selectList();
	}

	// 강사 클래스 상세보기
	@Override
	public Clss selectTclss(int cid) {
		return cDao.selectOne(cid);
	}

}