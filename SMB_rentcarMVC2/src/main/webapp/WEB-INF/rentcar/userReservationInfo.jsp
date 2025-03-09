<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx}/css/userReservationInfo.css?after"/>

<div class="inner">
    <div class="page-center">
        <h2 class="reservation-title">예약 상세 정보</h2>
        <c:if test="${reservation ne null}">
            <div class="car-info">
                <div class="registerCar-Photo">
                    <img src="${ctx}/img/${reservation.img}">
                </div>
            </div>
            <table class="reservation-table">
                <tr class="reservation-row">
                    <th>예약 번호</th>
                    <td>${reservation.reserve_seq}</td>
                </tr>
                <tr class="reservation-row">
                    <th>차량 이름</th>
                    <td>${reservation.name}</td>
                </tr>
                <tr class="reservation-row">
                    <th>수량</th>
                    <td>${reservation.qty}</td>
                </tr>
                <tr class="reservation-row">
                    <th>대여 기간</th>
                    <td>${reservation.dday} 일</td>
                </tr>
                <tr class="reservation-row">
                    <th>대여 일자</th>
                    <td>${reservation.rday}</td>
                </tr>
                <tr class="reservation-row">
                    <th>보험</th>
                    <td>${reservation.usein == 1 ? '적용' : '미적용'}</td>
                </tr>
                <tr class="reservation-row">
                    <th>Wifi</th>
                    <td>${reservation.usewifi == 1 ? '적용' : '미적용'}</td>
                </tr>
                <tr class="reservation-row">
                    <th>네비게이션</th>
                    <td>${reservation.usenavi == 1 ? '적용' : '미적용'}</td>
                </tr>
                <tr class="reservation-row">
                    <th>베이비시트</th>
                    <td>${reservation.useseat == 1 ? '적용' : '미적용'}</td>
                </tr>
            </table>
            <div class="button-container">
                <button class="action-btn update-btn" onclick="location.href='${ctx}/userReservationUpdateForm.do?seq=${reservation.reserve_seq}'">수정하기</button>
                <button class="action-btn delete-btn" onclick="location.href='${ctx}/userReservationDeleteInfo.do?seq=${reservation.reserve_seq}'">삭제하기</button>
            </div>
        </c:if>
    </div>
</div>

<%@ include file="../../part/footer.jsp"%>