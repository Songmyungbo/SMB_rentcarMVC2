package kr.basic.rentcar.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.basic.rentcar.util.rentcarConfig;
import kr.basic.rentcar.vo.RentcarVO;

public class RentcarDAO {
	private RentcarDAO() {

	}

	private static RentcarDAO dao = new RentcarDAO();

	public static RentcarDAO getInstance() {
		return dao;
	}

	public List<RentcarVO> carList() {
		List<RentcarVO> list = null;

		try (SqlSession session = rentcarConfig.getInstance().openSession()) {
			list = session.selectList("carList");

		} catch (Exception e) {
			System.out.println("carList 에러");
			e.printStackTrace();
		}

		return list;
	}

	public RentcarVO oneCar(int num) {
		RentcarVO vo = null;
		try (SqlSession session = rentcarConfig.getInstance().openSession()) {
			vo = session.selectOne("oneCar", num);
		} catch (Exception e) {
			System.out.println("oneCar 에러");
			e.printStackTrace();
		}
		return vo;
	}

	public void updateCarQty(int num, int totalQty) {

		RentcarVO vo = new RentcarVO();
		try (SqlSession session = rentcarConfig.getInstance().openSession()) {
			vo.setNum(num);
			vo.setTotalQty(totalQty);
			session.update("updateCarQty", vo);
			session.commit();
		} catch (Exception e) {
			System.out.println("updateCarQty 에러");
			e.printStackTrace();
		}

	}

	public void addCar(RentcarVO vo) {
		try (SqlSession session = rentcarConfig.getInstance().openSession()) {
			session.insert("addCar", vo);
			session.commit();
		} catch (Exception e) {
			System.out.println("addCar 에러");
			e.printStackTrace();
		}
	}

	public void deleteRentCar(int num) {
		try (SqlSession session = rentcarConfig.getInstance().openSession()) {
			session.delete("deleteReservByCarNum",num);
			session.delete("deleteRentCar", num);
			session.commit();
		} catch (Exception e) {
			System.out.println("deleteRentCar 에러");
			e.printStackTrace();
		}
	}
	
	public void updateRentCar(RentcarVO vo) {
		try (SqlSession session = rentcarConfig.getInstance().openSession()) {
			session.update("updateRentCar",vo);
			session.commit();
		} catch (Exception e) {
			System.out.println("updateRentCar 에러");
			e.printStackTrace();
		}
	}
}
