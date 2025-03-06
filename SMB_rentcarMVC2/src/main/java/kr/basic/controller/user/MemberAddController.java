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

public class MemberAddController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		MemberVO vo = new MemberVO(id,pwd,name,email,phone);
		
		String ctx = request.getContextPath();
		int cnt = UserDAO.getInstance().memberInsert(vo);
		if (cnt > 0) {
			return "redirect:" + ctx + "/index.do";
		} else {
			throw new ServletException("not insert");
		}
		
	}
	

}
