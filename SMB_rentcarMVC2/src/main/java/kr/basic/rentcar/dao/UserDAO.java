package kr.basic.rentcar.dao;

import java.util.List;




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

	public List<MemberVO> memberList() {
		List<MemberVO> list = null;
		
		try(SqlSession session = rentcarConfig.getInstance().openSession()){
			list = session.selectList("memberList");
			
		} catch (Exception e) {
			System.out.println("memberList 에러");
			e.printStackTrace();
		}
		
		return list;
	}
	public MemberVO memberContent(int num) {
		MemberVO vo = null;
		try(SqlSession session = rentcarConfig.getInstance().openSession()){
			vo = session.selectOne("memberContent", num);
		} catch (Exception e) {
			System.out.println("memberContent 에러");
			e.printStackTrace();
		}
	
		return vo;
	}
	public int memberDelete(String id) {
		int cnt = 0;
		try(SqlSession session = rentcarConfig.getInstance().openSession()){
			cnt = session.delete("memberDelete", id);
			session.commit();
		} catch (Exception e) {
			System.out.println("memberDelete 에러");
			e.printStackTrace();
		}
		return cnt;
	}
	
	public String getUserId(int num) {
		String userid = null;
		try(SqlSession session = rentcarConfig.getInstance().openSession()){
			userid = session.selectOne("getUserId",num);
		} catch (Exception e) {
			System.out.println("getUserId 에러");
			e.printStackTrace();
		}
		return userid;
	}
	
}
