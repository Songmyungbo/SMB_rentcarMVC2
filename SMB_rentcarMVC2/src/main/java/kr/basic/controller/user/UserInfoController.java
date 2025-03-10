package kr.basic.controller.user;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.UserDAO;
import kr.basic.rentcar.vo.MemberVO;

public class UserInfoController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int log = (int)session.getAttribute("log");
		String id = (String) session.getAttribute("id");
		
		int num = UserDAO.getInstance().getMemberNo(id);
		MemberVO user = UserDAO.getInstance().memberContent(num);
	
		request.getSession().setAttribute("user", user);
		System.out.println("test2222=" + user.getName());
		
		return "userInfo";
	}
	

}
