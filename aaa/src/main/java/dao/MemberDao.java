package dao;

import dto.Member;

public class MemberDao extends Dao{

	public static MemberDao memberDao = new MemberDao();
	
	// 1. 회원가입 메소드
	public boolean signup(Member member) {
		return false;
	}
	
	// 2. 로그인 메소드
	public boolean login(String mid, String mpassword) {
		return false;
	}
	
	// 3. 회원정보 수정 메소드
	public boolean update(Member member) {
		return false;
	}
	
	// 4. 회원 탈퇴 메소드
	public boolean delete(int mnum) {
		return false;
	}
	
	// 5. 회원 정보 불러오기
	public boolean getmember(int mnum) {
		return false;
	}
	
	// 6. 중복체크 메소드
	public boolean duplicate(String table, String value) {
		try {
			
		}catch(Exception e) {System.out.println("중복체크 오류 : "+e);}
		return false;
	}
}
