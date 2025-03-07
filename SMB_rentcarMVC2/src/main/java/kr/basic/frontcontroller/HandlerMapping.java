package kr.basic.frontcontroller;

import java.util.HashMap;

import kr.basic.controller.rentcar.CarInfoController;
import kr.basic.controller.rentcar.RegisterCarController;
import kr.basic.controller.rentcar.ReservateCarController;
import kr.basic.controller.rentcar.ReserveCarViewController;
import kr.basic.controller.rentcar.resultCarController;
import kr.basic.controller.user.LoginCheckController;
import kr.basic.controller.user.LoginOutController;
import kr.basic.controller.user.MainController;
import kr.basic.controller.user.MemberAddController;
import kr.basic.controller.user.MemberDeleteController;
import kr.basic.controller.user.MemberJoinController;
import kr.basic.controller.user.MemberListController;
import kr.basic.controller.user.VaildIdAjaxController;




public class HandlerMapping {
	private HashMap<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/login.do", new LoginCheckController());
		mappings.put("/index.do", new MainController());
		mappings.put("/logOut.do", new LoginOutController());
		mappings.put("/memberJoin.do", new MemberJoinController());
		mappings.put("/memberAdd.do", new MemberAddController());
		mappings.put("/memberList.do", new MemberListController());
		mappings.put("/memberDelete.do", new MemberDeleteController());
		
		
		mappings.put("/registerCar.do", new RegisterCarController());
		mappings.put("/carReservView.do",new ReserveCarViewController()); // 예약하기
		mappings.put("/carReserveInfo.do", new CarInfoController()); // 차량 정보
		mappings.put("/carReservMain.do", new ReservateCarController()); //예약하기 누르면 여러종류 차 나오게하기
		mappings.put("/resultCar.do", new resultCarController());
		
		mappings.put("/vaildIdAjax.do", new VaildIdAjaxController());
	}

	public Controller getController(String key) {
		return mappings.get(key);
	}
}
