package kr.basic.rentcar.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.basic.rentcar.util.rentcarConfig;
import kr.basic.rentcar.vo.MemberVO;

public class UserDAO {


	private UserDAO() {
		
	}
	private static UserDAO udao = new UserDAO();
	
	public static UserDAO getInstance() {
		return udao;
	}
	
	public String checkLogin(String id, String pw) {
		String name = null;
		try(SqlSession session = rentcarConfig.getInstance().openSession()){
			MemberVO vo = new MemberVO();
			vo.setUserid(id);
			vo.setPwd(pw);
			name = session.selectOne("checkLogin",vo);
		}catch(Exception e) {
			System.out.println("checkLogin 에러");
			e.printStackTrace();
		}
		return name;
	}
	public int getMemberNo(String id) {
		int cnt = 0;
		try(SqlSession session = rentcarConfig.getInstance().openSession()){
			cnt = session.selectOne("getMemberNo",id);
		}catch(Exception e) {
			System.out.println("getMemberNo 에러");
			e.printStackTrace();
		}
		return cnt;
	}
	
	public boolean isValidId(String id) {
		int cnt = 0;
		
		try(SqlSession session = rentcarConfig.getInstance().openSession()){
			cnt = session.selectOne("validMemberId",id);
		}catch(Exception e) {
			System.out.println("isValidId 에러");
			e.printStackTrace();
		}
		
		return cnt == 1? true : false;
	}

	public int memberInsert(MemberVO vo) {
		int cnt = 0;
		
		try(SqlSession session = rentcarConfig.getInstance().openSession()){
			cnt = session.insert("memberInsert",vo);
			session.commit();
		}catch(Exception e) {
			System.out.println("memberInsert 에러");
			e.printStackTrace();
		}
		return cnt;
	}
	
	
}
