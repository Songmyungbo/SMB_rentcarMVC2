<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/resultCar.css?after">
<div class="inner">
	<h2>예약 성공!</h2>

	<div class="reservation-details">

		<div class="car-info">
			<h3>예약 차량: ${car.name}</h3>
			<div class="registerCar-Photo">
				<img src="${ctx}/img/${car.img}" width="400" height="300"
					alt="${car.name}">
			</div>
		</div>

		<table class="reservation-table">
			<tr>
				<th>예약자</th>
				<td>${vo.userid}</td>
			</tr>
			<tr>
				<th>예약 수량</th>
				<td>${vo.qty}대</td>
			</tr>
			<tr>
				<th>대여 기간</th>
				<td>${vo.dday}일</td>
			</tr>
			<tr>
				<th>대여 시작일</th>
				<td>${vo.rday}</td>
			</tr>
			<tr>
				<th>옵션 선택</th>
				<td>
					<ul>
						<li>보험: ${vo.usein == 1 ? '적용 (1일 1만원)' : '미적용'}</li>
						<li>WiFi: ${vo.usewifi == 1 ? '적용 (1일 1만원)' : '미적용'}</li>
						<li>네비게이션: ${vo.usenavi == 1 ? '적용 (무료)' : '미적용'}</li>
						<li>베이비시트: ${vo.useseat == 1 ? '적용 (1일 1만원)' : '미적용'}</li>
					</ul>
				</td>
			</tr>
			<tr>
				<th>총 결제 금액</th>
				<td class="total-price">"${totalPrice}"</td>
			</tr>
		</table>

		<div class="button-container">
			<a href="${ctx}/index.do" class="btn">메인으로 돌아가기</a>
		</div>
	</div>
</div>
<%@ include file="../../part/footer.jsp"%>