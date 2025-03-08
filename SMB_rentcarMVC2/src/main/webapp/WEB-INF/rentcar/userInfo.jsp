<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../part/header.jsp" %>
    
<div class="inner">
    <h2>내 정보</h2>
    <form action="${ctx}/userInfoUpdate.do" method="post">
        <input type="hidden" name="id" value="${user.userid}">
        <table border="1">
            <tr>
                <th>아이디</th>
                <td>${user.userid}</td>
            </tr>
            <tr>
                <th>이름</th>
                <td><input type="text" name="name" value="${user.name}" required></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" name="pw" value="${user.pwd}" required></td>
            </tr>
            <tr>
                <th>이메일</th>
                <td><input type="email" name="email" value="${user.email}" required></td>
            </tr>
            <tr>
                <th>전화번호</th>
                <td><input type="text" name="phone" value="${user.phone}" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit">정보 수정</button>
                    <button type="button" onclick="location.href='${ctx}/userInfoDelete.do?id=${user.userid}'">회원탈퇴</button>
                    <button type="button" onclick="history.back()">취소</button>
                </td>
            </tr>
        </table>
    </form>
</div>
    
 <%@ include file= "../../part/footer.jsp" %>