package kr.basic.controller.rentcar;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.RentcarDAO;
import kr.basic.rentcar.vo.RentcarVO;

public class UpdateRentcarController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		RentcarVO car = RentcarDAO.getInstance().oneCar(num);
		
		if(car == null) {
			System.out.println("car값이없어!");
		}
		request.setAttribute("car", car);
		return "updateRentCar";
	}
}
