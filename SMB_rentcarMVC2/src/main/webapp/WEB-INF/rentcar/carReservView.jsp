<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx}/css/userReservation.css"/>

<div class="inner">
    <div class="page-center">
        <c:if test="${reservList eq null}">
            <h2 class="no-reservation">예약내역이 없습니다!</h2>
        </c:if>
        <c:if test="${reservList ne null}">
            <h2 class="reservation-title">예약확인</h2>
            <table class="reservation-table">
                <tr class="reservation-row header-row">
                    <th>예약 번호</th>
                    <th>차량 이름</th>
                    <th>수량</th>
                    <th>대여 기간</th>
                    <th>대여 일자</th>
                    <th>보험</th>
                    <th>WiFi</th>
                    <th>네비게이션</th>
                    <th>베이비시트</th>
                    <th colspan="2">관리</th>
                </tr>
                <c:forEach var="reserv" items="${reservList}">
                    <tr class="reservation-row">
                        <td>${reserv.reserve_seq}</td>
                        <td>${reserv.name}</td>
                        <td>${reserv.qty}</td>
                        <td>${reserv.dday} 일</td>
                        <td>${reserv.rday}</td>
                        <td>${reserv.usein == 1 ? '적용' : '미적용'}</td>
                        <td>${reserv.usewifi == 1 ? '적용' : '미적용'}</td>
                        <td>${reserv.usenavi == 1 ? '적용' : '미적용'}</td>
                        <td>${reserv.useseat == 1 ? '적용' : '미적용'}</td>
                        <td><button class="action-btn detail-btn" onclick="location.href='${ctx}/userReservationInfo.do?seq=${reserv.reserve_seq}'">예약상세보기</button></td>
                        <td><button class="action-btn delete-btn" onclick="location.href='${ctx}/userReservationDeleteInfo.do?seq=${reserv.reserve_seq}'">삭제하기</button></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>
</div>

<%@ include file="../../part/footer.jsp"%>