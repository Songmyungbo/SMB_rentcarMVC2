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

public class LoginCheckController implements Controller {

    @Override
    public String requestHandler(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        if (id == null || id.trim().isEmpty()) {
            return "login";
        }
        String pw = request.getParameter("pw");

        String ctx = request.getContextPath();

        if (UserDAO.getInstance().checkLogin(id, pw) == null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter writer = response.getWriter();
            writer.println("<script>alert('로그인 실패'); history.back();</script>");
            writer.close();
            return null;
        } else {
            HttpSession session = request.getSession();
            int num = UserDAO.getInstance().getMemberNo(id);
            MemberVO user = UserDAO.getInstance().memberContent(num);

            session.setAttribute("log", num); 
            session.setAttribute("id", id);   
            session.setAttribute("user", user); 

            if ("admin".equals(id)) {
                session.setAttribute("log", -1);
            }

            return "redirect:" + ctx + "/index.do";
        }
    }
}
