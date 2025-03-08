package kr.basic.controller.user;


import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.UserDAO;

public class UserInfoDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int log = (int) session.getAttribute("log");
		String id = request.getParameter("id");
		
		int memberDeleted = UserDAO.getInstance().memberDelete(id);
		if(memberDeleted > 0) {
		UserDAO.getInstance().deleteReserByUserId(id);
		session.invalidate();
		response.setContentType("text/html; charset=UTF-8");
		String ctx = request.getContextPath();
        response.getWriter().println("<script>alert('회원 탈퇴가 완료되었습니다.'); location.href='" + ctx + "/index.do';</script>");
		}
		return null;
	}
}
