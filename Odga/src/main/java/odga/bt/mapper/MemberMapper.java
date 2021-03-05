package odga.bt.mapper;

import java.util.ArrayList;

import odga.bt.domain.Member;
import odga.bt.domain.Planer;
import odga.bt.domain.S_Planer;
import odga.bt.domain.Touritems;


public interface MemberMapper {
	
	public int checkId(String m_email) throws Exception;
	public boolean joinS(Member member) throws Exception;
	public Member loginS(String m_email);
	public boolean updateS(Member member);
	public boolean updateNofile(Member member);
	public void leaveS(Member member);
	
	
	//이메일관련
	public boolean emailAuthIns(Member member) throws Exception; //이메일 인증키 저장
	public String emailAuthChk(String authkey) throws Exception; //이메일 인증키 대조
	public boolean emailAuthDel(String authkey) throws Exception; //이메일 인증키 삭제
	
	//마이페이지 나의 일정
	public ArrayList<Planer> myPlanner(long m_id); 
	public Planer thisPlaner(long p_id);
	public ArrayList<S_Planer> planDetail(long p_id);
	public Touritems detailItem (String contentid);

	//Find ID/PWD
	public String findId(Member member);
	public void findPwd(Member member);
}