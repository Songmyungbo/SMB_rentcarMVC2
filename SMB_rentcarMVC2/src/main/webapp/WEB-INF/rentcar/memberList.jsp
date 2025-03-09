<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp" %>
<link rel="stylesheet" type="text/css" href="${ctx}/css/memberList.css"/>

<script type="text/javascript">
    function deleteFn(id, num) {
        location.href="${ctx}/memberDelete.do?num=" + num + "&id=" + id; 
    }
</script>

<div class="inner">
    <div class="page-center">
            <h2 class="list-title">회원목록</h2>
            <table class="member-table">
                <tr class="member-row header-row">
                    <th>번호</th>
                    <th>아이디</th>
                    <th>비밀번호</th>
                    <th>이름</th>
                    <th>이메일</th>
                    <th>전화번호</th>
                    <th>관리</th>
                </tr>
                <c:forEach var="member" items="${list}">
                    <tr class="member-row">
                        <td>${member.num}</td>
                        <td>${member.userid}</td>
                        <td>${member.pwd}</td>
                        <td>${member.name}</td>
                        <td>${member.email}</td>
                        <td>${member.phone}</td>
                        <td><button class="action-btn delete-btn" onclick="deleteFn('${member.userid}', '${member.num}')">삭제</button></td>
                    </tr>
                </c:forEach>
            </table>
        <
    </div>
</div>

<%@ include file="../../part/footer.jsp" %>