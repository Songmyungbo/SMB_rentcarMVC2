<%@page import="kr.basic.rentcar.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp" %>

<link rel="stylesheet" type="text/css" href="${ctx}/css/userInfo.css"/>

<div class="inner">
    <div class="page-center">
        <h2 class="info-title">내 정보</h2>
        <form action="${ctx}/userInfoUpdate.do" method="post">
            <input type="hidden" name="id" value="${user.userid}">
            <table class="info-table">
                <tr class="info-row">
                    <th>아이디</th>
                    <td>${user.userid}</td>
                </tr>
                <tr class="info-row">
                    <th>이름</th>
                    <td><input type="text" name="name" value="${user.name}" required class="info-input"></td>
                </tr>
                <tr class="info-row">
                    <th>비밀번호</th>
                    <td><input type="password" name="pw" value="${user.pwd}" required class="info-input"></td>
                </tr>
                <tr class="info-row">
                    <th>이메일</th>
                    <td><input type="email" name="email" value="${user.email}" required class="info-input"></td>
                </tr>
                <tr class="info-row">
                    <th>전화번호</th>
                    <td><input type="text" name="phone" value="${user.phone}" required class="info-input"></td>
                </tr>
                <tr class="info-row">
                    <td colspan="2" class="action-cell">
                        <button type="submit" class="action-btn update-btn">정보 수정</button>
                        <button type="button" class="action-btn delete-btn" onclick="location.href='${ctx}/userInfoDelete.do?id=${user.userid}'">회원탈퇴</button>
                        <button type="button" class="action-btn cancel-btn" onclick="history.back()">취소</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

<%@ include file="../../part/footer.jsp" %>