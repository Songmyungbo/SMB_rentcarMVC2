<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../part/header.jsp" %>
<link rel="stylesheet" type="text/css" href="${ctx}/css/resultCar.css?after">
<div class="inner">
    <h2>예약 수정</h2>
    <c:if test="${reservation ne null}">
    <div class="registerCar-Photo">
    	<img src="${ctx}/img/${reservation.img}" width="600" height="500">
    </div>
    <form action="${ctx}/userReservationUpdate.do" method="post">
        <table border="1">
            <tr>
                <th>차량 이름</th>
                <td>${reservation.name}</td>
            </tr>
            <tr>
                <th>수량</th>
                <td><input type="number" name="qty" value="${reservation.qty}" min="1"></td>
            </tr>
            <tr>
                <th>대여 기간</th>
                <td>
                    <select name="dday">
                        <c:forEach var="i" begin="1" end="7">
                            <option value="${i}" ${reservation.dday == i ? 'selected' : ''}>${i}일</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>대여 일자</th>
                <td><input type="date" name="rday" value="${reservation.rday}"></td>
            </tr>
            <tr>
                <th>보험</th>
                <td>
                    <select name="usein">
                        <option value="1" ${reservation.usein == 1 ? 'selected' : ''}>적용</option>
                        <option value="0" ${reservation.usein == 0 ? 'selected' : ''}>미적용</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Wifi</th>
                <td>
                    <select name="usewifi">
                        <option value="1" ${reservation.usewifi == 1 ? 'selected' : ''}>적용</option>
                        <option value="0" ${reservation.usewifi == 0 ? 'selected' : ''}>미적용</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>네비게이션</th>
                <td>
                    <select name="usenavi">
                        <option value="1" ${reservation.usenavi == 1 ? 'selected' : ''}>적용</option>
                        <option value="0" ${reservation.usenavi == 0 ? 'selected' : ''}>미적용</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>베이비시트</th>
                <td>
                    <select name="useseat">
                        <option value="1" ${reservation.useseat == 1 ? 'selected' : ''}>적용</option>
                        <option value="0" ${reservation.useseat == 0 ? 'selected' : ''}>미적용</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
       				 <input type="hidden" name="reserve_seq" value="${reservation.reserve_seq}">
        			<input type="hidden" name="num" value="${reservation.num}"> 
                    <button type="submit">수정 완료</button>
                    <button type="button" onclick="history.back()">취소</button>
                </td>
            </tr>
        </table>
    </form>
  </c:if>
</div>
 <%@ include file= "../../part/footer.jsp" %>