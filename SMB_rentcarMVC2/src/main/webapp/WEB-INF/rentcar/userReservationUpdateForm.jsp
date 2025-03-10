<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/userReservationUpdate.css?after" />

<div class="inner">
	<div class="page-center">
		<h2 class="reservation-title">예약 수정</h2>
		<c:if test="${reservation ne null}">
			<div class="car-info">
				<div class="registerCar-Photo">
					<img src="${ctx}/img/${reservation.img}">
				</div>
			</div>
			<form action="${ctx}/userReservationUpdate.do" method="post">
				<table class="reservation-table">
					<tr class="reservation-row">
						<th>차량 이름</th>
						<td>${reservation.name}</td>
					</tr>
					<tr class="reservation-row">
						<th>수량</th>
						<td><input type="number" name="qty" min="1"
							value="${reservation.qty}" min="1" class="input-field"></td>
					</tr>
					<tr class="reservation-row">
						<th>대여 기간</th>
						<td><select name="dday" class="input-field">
								<c:forEach var="i" begin="1" end="7">
									<option value="${i}" ${reservation.dday == i ? 'selected' : ''}>${i}일</option>
								</c:forEach>
						</select></td>
					</tr>
					<tr class="reservation-row">
						<th>대여 일자</th>
						<td><input type="date" name="rday" id="rday"
							class="input-field"></td>
					</tr>
					<tr class="reservation-row">
						<th>보험</th>
						<td><select name="usein" class="input-field">
								<option value="1" ${reservation.usein == 1 ? 'selected' : ''}>적용</option>
								<option value="0" ${reservation.usein == 0 ? 'selected' : ''}>미적용</option>
						</select></td>
					</tr>
					<tr class="reservation-row">
						<th>Wifi</th>
						<td><select name="usewifi" class="input-field">
								<option value="1" ${reservation.usewifi == 1 ? 'selected' : ''}>적용</option>
								<option value="0" ${reservation.usewifi == 0 ? 'selected' : ''}>미적용</option>
						</select></td>
					</tr>
					<tr class="reservation-row">
						<th>네비게이션</th>
						<td><select name="usenavi" class="input-field">
								<option value="1" ${reservation.usenavi == 1 ? 'selected' : ''}>적용</option>
								<option value="0" ${reservation.usenavi == 0 ? 'selected' : ''}>미적용</option>
						</select></td>
					</tr>
					<tr class="reservation-row">
						<th>베이비시트</th>
						<td><select name="useseat" class="input-field">
								<option value="1" ${reservation.useseat == 1 ? 'selected' : ''}>적용</option>
								<option value="0" ${reservation.useseat == 0 ? 'selected' : ''}>미적용</option>
						</select></td>
					</tr>
					<tr class="reservation-row">
						<td colspan="2" class="button-cell"><input type="hidden"
							name="reserve_seq" value="${reservation.reserve_seq}"> <input
							type="hidden" name="num" value="${reservation.num}">
							<button type="submit" class="action-btn update-btn">수정
								완료</button>
							<button type="button" class="action-btn cancel-btn"
								onclick="history.back()">취소</button></td>
					</tr>
				</table>
			</form>
		</c:if>
	</div>
</div>

<script src="${ctx}/js/resultCar.js"></script>
<%@ include file="../../part/footer.jsp"%>