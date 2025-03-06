<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../part/header.jsp" %>
    <script type="text/javascript">
    function deleteFn(id, num){
  	  location.href="${ctx}/memberDelete.do?num="+num+"&id="+id; 
    }
    </script>
	<div class="inner">
		<h1>회원목록</h1>
	
	<table>
	<tr>
	<td>번호</td>
	<td>아이디</td>
	<td>비밀번호</td>
	<td>이름</td>
	<td>이메일</td>
	<td>전화번호</td>
	<td>삭제</td>
	</tr>
	<c:forEach var="member" items="${list}">
		<tr>
			<td>${member.num}</td>
			<td>${member.userid}</td>	
			<td>${member.pwd}</td>	
			<td>${member.email}</td>	
			<td>${member.phone}</td>
		    <td><input type="button" value="삭제" class="btn-del"  onclick="deleteFn('${member.userid}','${member.num}')"
    	      	    <c:if test="${loginId!=member.userid and loginId!='admin'}"> 
    	              disabled="disabled"
          	      </c:if>/></td>
		
		</tr>
	</c:forEach>
	
	</table>	
	</div>
    
 <%@ include file= "../../part/footer.jsp" %>