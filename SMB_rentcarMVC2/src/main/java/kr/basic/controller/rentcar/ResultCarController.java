package kr.basic.controller.rentcar;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.RentcarDAO;
import kr.basic.rentcar.dao.ReservationDAO;
import kr.basic.rentcar.dao.UserDAO;
import kr.basic.rentcar.vo.RentcarVO;
import kr.basic.rentcar.vo.ReservationVO;

public class ResultCarController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		int log = Integer.parseInt(request.getParameter("log"));
		System.out.println(log);
		String userid = UserDAO.getInstance().getUserId(log);
		int qty = Integer.parseInt(request.getParameter("qty"));
		int dday = Integer.parseInt(request.getParameter("dday"));
		String rday = request.getParameter("rday");
		
		int usein = Integer.parseInt(request.getParameter("usein"));
		int usewifi = Integer.parseInt(request.getParameter("usewifi"));
		int usenavi = Integer.parseInt(request.getParameter("usenavi"));
		int useseat = Integer.parseInt(request.getParameter("useseat"));
		
		RentcarVO car = RentcarDAO.getInstance().oneCar(num);
		int totalQty = car.getTotalQty()-qty; 
		RentcarDAO.getInstance().updateCarQty(num,totalQty); 
	
		int price = (car.getPrice()*dday)*qty; 
		if(usein == 1) {
			price += 10000 * dday;
		}
		if(usewifi == 1) {
			price += 10000 * dday;
		}
		if(useseat == 1) {
			price += 10000 * dday;
		}
		ReservationVO reservation = new ReservationVO();
        reservation.setNum(num);
        reservation.setUserid(userid);
        reservation.setQty(qty);
        reservation.setDday(dday);
        reservation.setRday(rday);
        reservation.setUsein(usein);
        reservation.setUsewifi(usewifi);
        reservation.setUsenavi(usenavi);
        reservation.setUseseat(useseat);
        
        ReservationDAO.getInstance().addReservation(reservation);
        
		
		System.out.println(price);
		
		request.setAttribute("car", car);
        request.setAttribute("vo", reservation);
        request.setAttribute("totalPrice", price);
		
		return "resultCar";
		
		
	}

}
