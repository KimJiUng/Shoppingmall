package dao;

import dto.Member;

public class MemberDao extends Dao{

	public static MemberDao memberDao = new MemberDao();
	
	// 1. 회원가입 메소드
	public boolean signup(Member member) {
		try {
			String sql = "insert into member(mid,mpassword,mname,mphone,memail,mbirthday,maddress) values(?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, member.getMid());
			ps.setString(2, member.getMpassword());
			ps.setString(3, member.getMname());
			ps.setString(4, member.getMphone());
			ps.setString(5, member.getMemail());
			ps.setString(6, member.getMbirthday());
			ps.setString(7, member.getMaddress());
			ps.executeUpdate();
			return true;
		}catch(Exception e) {System.out.println("회원가입 오류  : " +e);}
		
		return false;
	}
	
	// 2. 로그인 메소드
	public boolean login(String mid, String mpassword) {
		try {
			String sql = "select * from member where mid='"+mid+"' and mpassword='"+mpassword+"'";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {System.out.println("로그인 오류 : "+e);}
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
	public boolean duplicatecehck(String table, String value) {
		try {
			String sql = "select * from member where "+table+" = '"+value+"'";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {System.out.println("중복체크 오류 : "+e);}
		return false;
	}
	

	
}
