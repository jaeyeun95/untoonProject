package com.ict.untoon.clss.model.service;

import java.util.ArrayList;

import com.ict.untoon.clss.model.vo.Clss;

public interface ClssService {

	ArrayList<Clss> selectAll();	// 강사 강의 목록 조회용

	Clss selectClss(int cid);

}

