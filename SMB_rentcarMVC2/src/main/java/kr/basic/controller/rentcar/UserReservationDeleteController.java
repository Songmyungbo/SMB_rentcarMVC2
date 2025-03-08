package kr.basic.controller.rentcar;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.RentcarDAO;
import kr.basic.rentcar.dao.ReservationDAO;
import kr.basic.rentcar.vo.RentcarVO;
import kr.basic.rentcar.vo.ReservationDetailVO;
import kr.basic.rentcar.vo.ReservationListVO;

public class UserReservationDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int seq = Integer.parseInt(request.getParameter("seq"));
        ReservationDetailVO reservation = ReservationDAO.getInstance().getOneReservation(seq);
        int qty = reservation.getQty();
        int num = reservation.getNum();

        RentcarVO car = RentcarDAO.getInstance().oneCar(num);
        int currentTotalQty = car.getTotalQty();
        int newTotalQty = currentTotalQty + qty; 
        RentcarDAO.getInstance().updateCarQty(num, newTotalQty);

        ReservationDAO.getInstance().deleteReservation(seq);
        
        String ctx = request.getContextPath();

        return "redirect:"+ctx+"/carReservView.do";
		
		
	}

}
