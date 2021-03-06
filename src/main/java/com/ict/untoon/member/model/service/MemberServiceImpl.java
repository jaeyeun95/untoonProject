package com.ict.untoon.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.untoon.member.model.dao.MemberDao;
import com.ict.untoon.member.model.vo.Member;


@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) {
		Member loginUser = mDao.loginMember(m);
		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		int result = mDao.insertMember(m);
		return result;
	}
	
	/*
	 * @Override public int insertTeMember(Member m) { int result =
	 * mDao.insertTeMember(m); return result; }
	 */
	

	@Override
	public int updateMember(Member m) {
		
		return mDao.updateMember(m);
	}

	@Override
	public int deleteMember(String id) {
		
		return mDao.deleteMember(id);
	}

	@Override
	public int idCheck(String id) {
			
		return mDao.idCheck(id);
	}

	@Override
	public int nicknameCheck(String nickname) {
		
		return mDao.nicknameCheck(nickname);
	}
	@Override
	public int emailCheck(String email) {
		
		return mDao.emailCheck(email);
	}


}
