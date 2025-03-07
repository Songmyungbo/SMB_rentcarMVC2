package kr.basic.rentcar.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.basic.rentcar.util.rentcarConfig;
import kr.basic.rentcar.vo.ReservationListVO;
import kr.basic.rentcar.vo.ReservationVO;

public class ReservationDAO {
	private ReservationDAO() {
		
	}
	private static ReservationDAO reserdao = new ReservationDAO();
	
	public static ReservationDAO getInstance() {
		return reserdao;
	}

	public void addReservation(ReservationVO vo) {
		try(SqlSession session = rentcarConfig.getInstance().openSession()){
			session.insert("addReservation",vo);
			session.commit();
		} catch (Exception e) {
			System.out.println("addReservation 에러");
			e.printStackTrace();
		}
	}

	public List<ReservationListVO> getReservationList(int log) {
			List<ReservationListVO> list = null;
			try(SqlSession session = rentcarConfig.getInstance().openSession()){
				list = session.selectList("getReservationList",log);
				
			} catch (Exception e) {
				System.out.println("getReservationList 에러");
				e.printStackTrace();
			}
			
		return list;
	}




	
	
	

}
