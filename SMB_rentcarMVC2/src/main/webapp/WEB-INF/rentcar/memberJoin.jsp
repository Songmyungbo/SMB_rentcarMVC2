<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../part/header.jsp" %>
    
	<div class="inner">
	<h1>회원가입</h1>
	
	<form action="${ctx}/memberAdd.do" method="post">
		<table>
		<tr>
		<td>아이디</td>
		<td><input type="text" name="id" id="id" required autofocus /><input type="button" value="아이디중복체크" id="checkId" class="btn-submit" /></td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pwd" id="pwd" required /></td>
		</tr>
		<tr>
		<td>이름</td>
		<td><input type="text" name="name" id="name" required /></td>
		</tr>
		<tr>
		<td>이메일</td>
		<td><input type="text" name="email" id="email" required /></td>
		</tr>
		<tr>
		<td>연락처</td>
		<td><input type="text" name="phone" id="phone" required /></td>
		</tr>
		
		<tr>
		<td colspan="2">
			<button class="btn-submit" onclick="joinCheck(form)" >가입</button>
		</tr>
		
		</table>
	</form>
	
	
	</div>
 <script src="${ctx}/js/join.js"> </script>
 <%@ include file= "../../part/footer.jsp" %>