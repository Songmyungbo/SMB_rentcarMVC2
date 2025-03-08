<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>

<c:set var="i" value="0" />
<c:set var="j" value="3" />
<table>
	<c:forEach var="car" items="${list}">
		<c:if test="${i%j eq 0}">
			<tr>
		</c:if>
		<td><a href="${ctx}/carReserveInfo.do?num=${car.num}"><img
				class="car" src="${ctx}/img/${car.img}" width="400" height="300"></a>
		<td>${car.name}</td>
		<c:if test="${i%j eq j-1 }">
			</tr>
		</c:if>
		<c:set var="i" value="${i+1}" />
	</c:forEach>
</table>


<%@ include file="../../part/footer.jsp"%>

