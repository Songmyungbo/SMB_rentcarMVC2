package kr.basic.frontcontroller;

import java.util.HashMap;


import kr.basic.controller.rentcar.CarInfoController;
import kr.basic.controller.rentcar.DeleteRentCarController;
import kr.basic.controller.rentcar.InsertCarController;
import kr.basic.controller.rentcar.InsertCarFileController;
import kr.basic.controller.rentcar.RegisterCarController;
import kr.basic.controller.rentcar.ReservateCarController;
import kr.basic.controller.rentcar.ReserveCarViewController;
import kr.basic.controller.rentcar.ResultCarController;
import kr.basic.controller.rentcar.UpdateRentcarAProController;
import kr.basic.controller.rentcar.UpdateRentcarController;
import kr.basic.controller.rentcar.UserReservationDeleteController;
import kr.basic.controller.rentcar.UserReservationInfoController;
import kr.basic.controller.rentcar.UserReservationUpdateController;
import kr.basic.controller.rentcar.UserReservationUpdateFormController;
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
		mappings.put("/carReservView.do",new ReserveCarViewController());
		mappings.put("/carReserveInfo.do", new CarInfoController()); 
		mappings.put("/carReservMain.do", new ReservateCarController()); 
		mappings.put("/resultCar.do", new ResultCarController());
		mappings.put("/vaildIdAjax.do", new VaildIdAjaxController());
		
		mappings.put("/userReservationInfo.do", new UserReservationInfoController());
        mappings.put("/userReservationUpdateForm.do", new UserReservationUpdateFormController());
        mappings.put("/userReservationUpdate.do", new UserReservationUpdateController());
        mappings.put("/userReservationDeleteInfo.do", new UserReservationDeleteController());
        mappings.put("/insertCar.do", new InsertCarController());
        mappings.put("/insertCarProcess.do", new InsertCarFileController());
        mappings.put("/deleteRentCar.do", new DeleteRentCarController());
        mappings.put("/updateRentCar.do", new UpdateRentcarController());
        mappings.put("/updateRentCarAprocess.do", new UpdateRentcarAProController());
        
        
	}

	public Controller getController(String key) {
		return mappings.get(key);
	}
}
