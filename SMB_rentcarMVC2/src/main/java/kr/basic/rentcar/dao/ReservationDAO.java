package kr.basic.rentcar.dao;



public class ReservationDAO {
	private ReservationDAO() {
		
	}
	private static ReservationDAO Reserdao = new ReservationDAO();
	
	public static ReservationDAO getInstance() {
		return Reserdao;
	}
	
	
	

}
