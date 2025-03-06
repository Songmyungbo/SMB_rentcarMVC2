package kr.basic.rentcar.dao;



public class RentcarDAO {
	private RentcarDAO() {
		
	}
	private static RentcarDAO dao = new RentcarDAO();
	
	public static RentcarDAO getInstance() {
		return dao;
	}


}
