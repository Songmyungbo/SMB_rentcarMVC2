package kr.basic.controller.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.UserDAO;
import kr.basic.rentcar.vo.MemberVO;

public class MemberListController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ArrayList<MemberVO> list = (ArrayList<MemberVO>) UserDAO.getInstance().memberList();
		
		request.setAttribute("list", list);
		HttpSession session = request.getSession();
		if(session.getAttribute("log") != null) {
			int num = (int) session.getAttribute("log");
			request.setAttribute("num", num);
		}else {
			request.setAttribute("num", null);
		}
		
		return "memberList";
	}
	

}
