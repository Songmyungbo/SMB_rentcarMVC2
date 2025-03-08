package kr.basic.controller.rentcar;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.RentcarDAO;
import kr.basic.rentcar.vo.RentcarVO;
import utils.FileUtil;

public class UpdateRentcarAProController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("name");
		int category = Integer.parseInt(request.getParameter("category"));
		int price = Integer.parseInt(request.getParameter("price"));
		int usepeople = Integer.parseInt(request.getParameter("usepeople"));
		int totalQty = Integer.parseInt(request.getParameter("totalQty"));
		String company = request.getParameter("company");
        String info = request.getParameter("info");
        String currentImg = request.getParameter("currentImg");

        String[] fileInfo = FileUtil.uploadFile(request, "img");
        String savedFileName = (fileInfo != null && fileInfo.length > 1) ? fileInfo[1] : currentImg;
        
        RentcarVO car = new RentcarVO();
        car.setNum(num);
        car.setName(name);
        car.setCategory(category);
        car.setPrice(price);
        car.setUsepeople(usepeople);
        car.setTotalQty(totalQty);
        car.setCompany(company);
        car.setImg(savedFileName);
        car.setInfo(info);
        
        
        RentcarDAO.getInstance().updateRentCar(car);
        String ctx = request.getContextPath();
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().println("<script>alert('차량 정보가 수정되었습니다!'); location.href='" + ctx + "/carReservMain.do';</script>");
        return null;
		
	}
}
