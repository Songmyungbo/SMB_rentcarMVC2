<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>

<div class="car-list">
    <c:forEach var="car" items="${list}">
        <div class="car-card">
            <a href="${ctx}/carReserveInfo.do?num=${car.num}">
                <img class="car-image" src="${ctx}/img/${car.img}">
            </a>
            <div class="car-name">${car.name}</div>
        </div>
    </c:forEach>
</div>

<%@ include file="../../part/footer.jsp"%>

