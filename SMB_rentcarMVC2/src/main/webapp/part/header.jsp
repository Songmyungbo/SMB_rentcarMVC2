<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mvc2 </title>
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css" />
</head>
<body>

  <header>
    <div class="inner">
          <div class="gnb">
        <a href="${ctx}/index.do">
        	<img class="logo" src="${ctx}/img/1.jpg" height="120">
        </a>
		<a href="${ctx}/carReservMain.do">예약하기</a>
		<a href="${ctx}/carReservView.do">예약확인</a>
        <a href="${ctx}/board.do">자유게시판</a>
        <a href="${ctx}/memberJoin.do">회원가입</a>
        <c:if test="${log eq null}">
        <a href="${ctx}/login.do">로그인</a>
        </c:if>
        <c:if test="${log ne null}">
        <a href="${ctx}/logOut.do">로그아웃</a>
        </c:if>
        
   
        </div>
      </div>

</header>
<main>