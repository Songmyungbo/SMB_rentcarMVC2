package kr.basic.frontcontroller;

import java.util.HashMap;

import kr.basic.controller.rentcar.ReservateCarController;
import kr.basic.controller.rentcar.ReserveCarViewController;
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
		mappings.put("/carReservMain.do", new ReservateCarController());
		mappings.put("/login.do", new LoginCheckController());
		mappings.put("/carReservView.do",new ReserveCarViewController());
		mappings.put("/index.do", new MainController());
		mappings.put("/logOut.do", new LoginOutController());
		mappings.put("/memberJoin.do", new MemberJoinController());
		mappings.put("/vaildIdAjax.do", new VaildIdAjaxController());
		mappings.put("/memberAdd.do", new MemberAddController());
		mappings.put("/memberList.do", new MemberListController());
		mappings.put("/memberDelete.do", new MemberDeleteController());

	}

	public Controller getController(String key) {
		return mappings.get(key);
	}
}
