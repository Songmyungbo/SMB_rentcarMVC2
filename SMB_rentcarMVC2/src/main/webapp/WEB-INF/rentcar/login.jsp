<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx}/css/login.css" />

	<div class="inner">
	<div class="page-center">
		<h1 class="login-title">로그인</h1>
		<div class="login-container">
			<form action="${ctx}/login.do" method="post">
				<table class="login-table">
					<tr class="form-row">
						<td>아이디</td>
						<td><input type="text" name="id" required autofocus></td>
					</tr>
					<tr class="form-row">
						<td>비밀번호</td>
						<td><input type="password" name="pw" required></td>
					</tr>
					<tr class="form-row">
						<td colspan="2"><input type="submit" value="로그인"
							class="btn-submit"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>


<%@ include file="../../part/footer.jsp"%>