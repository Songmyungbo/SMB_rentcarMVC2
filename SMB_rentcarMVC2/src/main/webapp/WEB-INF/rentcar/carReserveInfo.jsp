<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx}/css/reserveCar.css"/>

<div class="inner">
    <div class="page-center">
        <h1 class="car-title">${car.name}</h1>
        <div class="reserveCar-Photo">
            <img src="${ctx}/img/${car.img}" width="600" height="500">
        </div>
        <form action="${ctx}/registerCar.do">
            <table class="car-info">
                <tr class="info-row">
                    <th>차량이름</th>
                    <td>${car.name}</td>
                </tr>
                <tr class="info-row">
                    <th>승차인원</th>
                    <td>${car.usepeople}</td>
                </tr>
                <tr class="info-row">
                    <th>차량수량</th>
                    <td>
                        <select name="qty" id="qtyVal">
                            <c:forEach var="carCnt" begin="1" end="${car.totalQty}">
                                <option value="${carCnt}">${carCnt}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="info-row">
                    <th>차량분류</th>
                    <td>
                        <c:if test="${car.category eq 1}">
                            <c:out value="소형" />
                        </c:if>
                        <c:if test="${car.category eq 2}">
                            <c:out value="중형" />
                        </c:if>
                        <c:if test="${car.category eq 3}">
                            <c:out value="대형" />
                        </c:if>
                    </td>
                </tr>
                <tr class="info-row">
                    <th>대여가격</th>
                    <td>${car.price}원<input type="hidden" name="price" value="${car.price}" /></td>
                    
                </tr>
                <tr class="info-row">
                    <th>제조회사</th>
                    <td>${car.company}</td>
                </tr>
                <tr class="info-row">
                    <c:if test="${car.totalQty eq 0}">
                        <td colspan="2"><h1 class="sold-out">현재 차량수량이 없습니다 죄송합니다</h1></td>
                    </c:if>
                    <c:if test="${car.totalQty ne 0}">
                        <td colspan="2">
                            <div class="button-container">
                                <c:if test="${log ne null}">
                                    <input type="hidden" name="num" value="${car.num}" />
                                    <button class="reserve-Btn">옵션선택</button>
                                </c:if>
                                <c:if test="${log eq -1}">
                                    <button type="button" class="update-Btn" onclick="location.href='${ctx}/updateRentCar.do?num=${car.num}'">차량정보수정</button>
                                    <button type="button" class="remove-Btn" onclick="location.href='${ctx}/deleteRentCar.do?num=${car.num}'">차량삭제</button>
                                </c:if>
                            </div>
                        </td>
                    </c:if>
                </tr>
            </table>
        </form>
    </div>
</div>

<%@ include file="../../part/footer.jsp"%>