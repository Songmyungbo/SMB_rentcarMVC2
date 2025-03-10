<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx}/css/register.css" />
<c:set var="i" value="1" />
<c:set var="j" value="7" />
<div class="inner">
	<div class="page-center">
		<h1 class="car-title">${car.name}예약옵션</h1>
		<h1 class="reserve-quantity">${qty}개예약</h1>
		<div class="registerCar-Photo">
			<img src="${ctx}/img/${car.img}" width="600" height="500">
		</div>
		<form action="${ctx}/resultCar.do" method="post">
			<table class="car-options">
				<tr class="option-row">
					<th>대여기간</th>
					<td><select name="dday" id="dday">
							<c:forEach var="i" begin="${i}" end="${j}">
								<option value="${i}">${i}일</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr class="option-row">
					<th>대여일</th>
					<td><input type="date" name="rday" id="rday"></td>
				</tr>
				<tr class="option-row">
					<th>보험적용</th>
					<td><select name="usein" id="usein">
							<option value="1">적용(1일 1만원)</option>
							<option value="0">적용 안함</option>
					</select></td>
				</tr>
				<tr class="option-row">
					<th>Wifi적용</th>
					<td><select name="usewifi" id="usewifi">
							<option value="1">적용(1일 1만원)</option>
							<option value="0">적용 안함</option>
					</select></td>
				</tr>
				<tr class="option-row">
					<th>네비게이션 적용</th>
					<td><select name="usenavi" id="usenavi">
							<option value="1">적용(무료)</option>
							<option value="0">적용 안함</option>
					</select></td>
				</tr>
				<tr class="option-row">
					<th>베이비시트 적용</th>
					<td><select name="useseat" id="useseat">
							<option value="1">적용(1일 1만원)</option>
							<option value="0">적용 안함</option>
					</select></td>
				</tr>
				<tr class="option-row">
					<th>총금액</th>
					<td id="total-price"><span id="totalPriceDisplay">${price * qty}</span>원
						<input type="hidden" id="basePrice" value="${price}"> <input
						type="hidden" id="qtyInput" value="${qty}"></td>
				</tr>
				<tr class="option-row">
					<td colspan="2"><input type="hidden" name="num" id="num"
						value="${car.num}" /> <input type="hidden" name="log" id="log"
						value="${log}" /> <input type="hidden" name="qty" id="qty"
						value="${qty}" />
						<button class="next-btn">
							차량 예약 하기 <span>></span>
						</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>

<script src="${ctx}/js/resultCar.js"></script>
<%@ include file="../../part/footer.jsp"%>