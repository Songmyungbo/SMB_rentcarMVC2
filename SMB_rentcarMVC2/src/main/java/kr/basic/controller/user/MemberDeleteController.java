package kr.basic.controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.UserDAO;
import kr.basic.rentcar.vo.MemberVO;

public class MemberDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ctx = request.getContextPath();
		
		MemberVO vo = UserDAO.getInstance().memberContent(Integer.parseInt(request.getParameter("num")));
		
		int cnt = UserDAO.getInstance().memberDelete(request.getParameter("id"));
		if(cnt > 0) {
			return "redirect:" + ctx + "/memberList.do";
		}else {
			throw new ServletException("not delete");
		}
		
	}
	

}
