package kr.basic.controller.rentcar;

import java.io.IOException;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.RentcarDAO;
import kr.basic.rentcar.vo.RentcarVO;
import utils.FileUtil;

public class InsertCarFileController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name = request.getParameter("name");
        int category = Integer.parseInt(request.getParameter("category"));
        int price = Integer.parseInt(request.getParameter("price"));
        int usepeople = Integer.parseInt(request.getParameter("usepeople"));
        int total_qty = Integer.parseInt(request.getParameter("total_qty"));
        String company = request.getParameter("company");
        String info = request.getParameter("info");

        // 파일 업로드 처리
        String[] fileInfo = FileUtil.uploadFile(request, "img");
        if (fileInfo == null || fileInfo.length < 2) {
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('이미지 업로드에 실패했습니다.'); history.back();</script>");
            return null;
        }
        String originalFileName = fileInfo[0];
        String savedFileName = fileInfo[1];

        RentcarVO car = new RentcarVO();
        car.setName(name);
        car.setCategory(category);
        car.setPrice(price);
        car.setUsepeople(usepeople);
        car.setTotalQty(total_qty);
        car.setCompany(company);
        car.setImg(savedFileName); 
        car.setInfo(info);

        // DB에 저장
        RentcarDAO.getInstance().addCar(car);
        String ctx = request.getContextPath();
        // 성공 메시지와 리다이렉트
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().println("<script>alert('차량이 성공적으로 업로드되었습니다.'); location.href='" + ctx + "/carReservMain.do';</script>");
        return null;
		
		
	}

}
