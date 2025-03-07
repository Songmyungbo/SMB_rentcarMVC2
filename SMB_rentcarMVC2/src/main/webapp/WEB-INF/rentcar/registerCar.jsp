<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../part/header.jsp" %>
    
    <c:set var="i" value="1"/>
    <c:set var="j" value="7"/>
    
    <div class="inner">
    <form action="${ctx}/resultCar.do" method="post">
    <h1>${car.name} 예약옵션</h1>
    <h1>${qty} 개 예약</h1>
    <div class="registerCar-Photo">
    <img src="${ctx}/img/${car.img}" width="600" height="500">
   	</div>
   	<table>
   	<tr>
   	<th>대여기간</th>
   	<td>
   	<select name="dday" id="dday">
   	<c:forEach var="i" begin="${i}" end="${j}">
   		<option value="${i}">${i}일</option>
   	</c:forEach>
   	</select>
   	</td>
   	<tr>
   	<th>대여일</th>
   	<td><input type="date" name="rday" id="rday"></td>
   	</tr>
   	<tr>
   	<th>보험적용</th>
   	<td>
   	<select name="usein" id="usein">
   	<option value="1">적용(1일 1만원)</option>
   	<option value="0">적용 안함</option>
   	</select>
   	</td>
   	</tr>
   	<tr>
   	<th>Wifi적용</th>
   	<td>
   	<select name="usewifi" id="usewifi">
   	<option value="1">적용(1일 1만원)</option>
   	<option value="0">적용 안함</option>
   	</select>
   	</td>
   	</tr>
   	<tr>
   	<th>네비게이션 적용</th>
   	<td>
   	<select name="usenavi" id="usenavi">
   	<option value="1">적용(무료)</option>
   	<option value="0">적용 안함</option>
   	</select>
   	</td>
   	</tr>
   	<tr>
   	<th>베이비시트 적용</th>
   	<td>
   	<select name="useseat" id="useseat">
   	<option value="1">적용(1일 1만원)</option>
   	<option value="0">적용 안함</option>
   	</select>
   	</td>
   	</tr>
   	<tr>
    <td colspan="2">
    <input type="hidden" name="num" id ="num" value="${car.num}" />
    <input type="hidden" name="log" id="log" value="${log}">
    <input type="hidden" name="qty" id="qty" value="${qty}">
    <button class="next-btn mybtn"> 차량 예약 하기 <span>></span></button>
    </td>
    </tr>
   	
   	
   	</table>
   	
   	</form>
    </div>
    
    
    
<script src="${ctx}/js/resultCar.js" ></script>
 <%@ include file= "../../part/footer.jsp" %>