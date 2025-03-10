package kr.basic.controller.rentcar;

import java.io.IOException;

import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.RentcarDAO;
import kr.basic.rentcar.vo.RentcarVO;

public class ReservateCarController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ArrayList<RentcarVO> list = null;
		String type = request.getParameter("type");
		if(type == null) {
			list = (ArrayList<RentcarVO>) RentcarDAO.getInstance().carList();
			request.setAttribute("list", list);
			return "carReservMain";
		}
		
		if(type.equals("all")) {
		list = (ArrayList<RentcarVO>) RentcarDAO.getInstance().carList(); //이건 전체
		}else if(type.equals("small")) {
		list = (ArrayList<RentcarVO>) RentcarDAO.getInstance().categoryCarList(1);// 이건 소형
		}else if(type.equals("medium")) {
		list = (ArrayList<RentcarVO>) RentcarDAO.getInstance().categoryCarList(2);// 이건 소형
		}else if(type.equals("large")) {
		list = (ArrayList<RentcarVO>) RentcarDAO.getInstance().categoryCarList(3);// 이건 소형
		}
		
		
		request.setAttribute("list", list);
		HttpSession session = request.getSession();
		return "carReservMain";
		
		
	}

}
