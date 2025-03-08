package kr.basic.controller.rentcar;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.ReservationDAO;
import kr.basic.rentcar.vo.ReservationDetailVO;
import kr.basic.rentcar.vo.ReservationListVO;

public class UserReservationUpdateFormController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int seq = Integer.parseInt(request.getParameter("seq"));
        ReservationDetailVO reservation = ReservationDAO.getInstance().getOneReservation(seq);
        request.setAttribute("reservation", reservation);
        return "userReservationUpdateForm";
		
		
	}

}
