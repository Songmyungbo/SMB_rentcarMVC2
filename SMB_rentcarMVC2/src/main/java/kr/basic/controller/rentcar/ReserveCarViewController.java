package kr.basic.controller.rentcar;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.ReservationDAO;
import kr.basic.rentcar.vo.ReservationListVO;

public class ReserveCarViewController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if(request.getSession().getAttribute("log") == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('로그인 후 이용가능합니다'); history.back();</script>");
			writer.close();
			return null;
		}
			int log = (int) request.getSession().getAttribute("log");
			
			List<ReservationListVO> list;
			
			if(log == -1) {
				list = ReservationDAO.getInstance().getAllReservations();
			}else {
				list = ReservationDAO.getInstance().getReservationList(log);
			}
			
			
			if(list == null|| list.size() == 0) {
				request.setAttribute("reservList", null);
			}else {
				request.setAttribute("reservList", list);
			}
		
			return "carReservView";
		
	}

}
