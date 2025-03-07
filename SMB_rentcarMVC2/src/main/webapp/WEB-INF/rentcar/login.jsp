<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../part/header.jsp" %>
    
	<div class="inner">
	<h1>로그인</h1>
	
	<form action="${ctx}/login.do" method="post">
		<table>
		<tr>
		<td>아이디</td>
		<td><input type="text" name="id" required autofocus></td>
		</tr>
		<td>비밀번호</td>
		<td><input type="password" name="pw" required></td>
		</tr>
		<tr>
		<td colspan="2">
			<input type="submit" value="로그인">
		</tr>
		
		</table>
	</form>
	
	
	</div>
    
 <%@ include file= "../../part/footer.jsp" %>