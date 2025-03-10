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

public class UserInfoUpdateController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
        String name = request.getParameter("name");
        String pw = request.getParameter("pw");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        
        MemberVO vo = new MemberVO();
        vo.setUserid(id);
        vo.setName(name);
        vo.setPwd(pw);
        vo.setEmail(email);
        vo.setPhone(phone);

        System.out.println("vo=" +  vo);
        if(UserDAO.getInstance().updateUser(vo) >0 ) {
        	System.out.println(" 멤버 업데이트 성공 ");
        }
        int num = UserDAO.getInstance().getMemberNo(id);
        MemberVO user = UserDAO.getInstance().memberContent(num);
        System.out.println("user=" + user);
        
//
//        response.setContentType("text/html; charset=UTF-8");
//        PrintWriter out = response.getWriter();
        String ctx = request.getContextPath();

//        System.out.println("Loaded user: " + user.getName());
//        out.println("<script>alert('정보가 수정되었습니다!'); location.href='" + ctx + "/userInfo.do';</script>");
//        out.flush();
        return "redirect:" + ctx + "/userInfo.do";
		
		
		
	}
	

}
