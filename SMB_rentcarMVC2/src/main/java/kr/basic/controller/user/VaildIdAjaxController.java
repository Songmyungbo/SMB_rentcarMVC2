package kr.basic.controller.user;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.UserDAO;

public class VaildIdAjaxController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id=request.getParameter("id");
		String passData = UserDAO.getInstance().isValidId(id)? "notValid" : "valid";
	
		response.getWriter().print(passData);
		
		return null;
	}

}
