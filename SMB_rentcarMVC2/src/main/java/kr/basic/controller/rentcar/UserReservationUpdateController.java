package kr.basic.controller.rentcar;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.basic.frontcontroller.Controller;
import kr.basic.rentcar.dao.RentcarDAO;
import kr.basic.rentcar.dao.ReservationDAO;
import kr.basic.rentcar.vo.RentcarVO;
import kr.basic.rentcar.vo.ReservationDetailVO;
import kr.basic.rentcar.vo.ReservationListVO;
import kr.basic.rentcar.vo.ReservationVO;

public class UserReservationUpdateController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int reserve_seq = Integer.parseInt(request.getParameter("reserve_seq"));
        int num = Integer.parseInt(request.getParameter("num")); // 차량 번호
        int qty = Integer.parseInt(request.getParameter("qty"));
        int dday = Integer.parseInt(request.getParameter("dday"));
        String rday = request.getParameter("rday");
        int usein = Integer.parseInt(request.getParameter("usein"));
        int usewifi = Integer.parseInt(request.getParameter("usewifi"));
        int usenavi = Integer.parseInt(request.getParameter("usenavi"));
        int useseat = Integer.parseInt(request.getParameter("useseat"));

        ReservationDetailVO original = ReservationDAO.getInstance().getOneReservation(reserve_seq);
        int originalQty = original.getQty();

        RentcarVO car = RentcarDAO.getInstance().oneCar(num);
        int currentTotalQty = car.getTotalQty();
        int qtyDiff = originalQty - qty; 
        int newTotalQty = currentTotalQty + qtyDiff; 

        if (newTotalQty < 0) {
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('재고가 부족합니다.'); history.back();</script>");
            return null;
        }

        ReservationVO vo = new ReservationVO();
        vo.setReserve_seq(reserve_seq);
        vo.setQty(qty);
        vo.setDday(dday);
        vo.setRday(rday);
        vo.setUsein(usein);
        vo.setUsewifi(usewifi);
        vo.setUsenavi(usenavi);
        vo.setUseseat(useseat);
        ReservationDAO.getInstance().updateReservation(vo);
        
        String ctx = request.getContextPath();

        RentcarDAO.getInstance().updateCarQty(num, newTotalQty);

        return "redirect:"+ctx+"/carReservView.do";
		
		
	}

}
