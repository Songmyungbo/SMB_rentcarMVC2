<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../part/header.jsp" %>
    
    <c:if test="${reservList eq null}">
	<h1>예약내역이 없습니다!</h1>    
    </c:if>
    <c:if test="${reservList ne null}">
    <div class="inner">
    	<h2>예약확인</h2>
    	<table border=1>
    		<tr>
				<th>예약 번호</th>    		
				<th>차량 이름</th>    		
				<th>수량</th>    		
				<th>대여 기간</th>    		
				<th>대여 일자</th>    		
				<th>보험</th>    		
				<th>Wifi</th>    		
				<th>네비게이션</th>    		
				<th>베이비시트</th>
    		</tr>
    	<c:forEach var="reserv" items="${reservList}">
    		<tr>
    			<td>${reserv.reserve_seq}</td>
    			<td>${reserv.name}</td>
    			<td>${reserv.qty}</td>
    			<td>${reserv.dday} 일</td>
    			<td>${reserv.rday}</td>
    			<td>${reserv.usein == 1? '적용' : '미적용'}</td>
    			<td>${reserv.usewifi == 1? '적용' : '미적용'}</td>
    			<td>${reserv.usenavi == 1? '적용' : '미적용'}</td>
    			<td>${reserv.useseat == 1? '적용' : '미적용'}</td>
    		</tr>
    	</c:forEach>
    	</table>
    </div>
    </c:if>
    
 <%@ include file= "../../part/footer.jsp" %>