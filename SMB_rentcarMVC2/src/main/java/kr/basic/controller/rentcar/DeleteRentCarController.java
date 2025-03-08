package kr.basic.controller.rentcar;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.RentcarDAO;

public class DeleteRentCarController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		RentcarDAO.getInstance().deleteRentCar(num);
		String ctx = request.getContextPath();
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().println("<script>alert('차량이 삭제되었습니다!'); location.href='" + ctx + "/carReservMain.do';</script>");
		response.getWriter().flush();
		return null;
		
		
	}

}
