<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file= "../../part/header.jsp" %>
<link rel="stylesheet" type="text/css" href="${ctx}/css/join.css"/>
    <div class="inner">
        <div class="page-center">
            <h1 class="join-title">회원가입</h1>
            <div class="join-container">
                <form action="${ctx}/memberAdd.do" method="post">
                    <table class="join-table">
                        <tr class="form-row">
                            <td>아이디</td>
                            <td>
                                <input type="text" name="id" id="id" required autofocus />
                                <input type="button" value="아이디중복체크" id="checkId" class="btn-submit btn-small" />
                            </td>
                        </tr>
                        <tr class="form-row">
                            <td>비밀번호</td>
                            <td><input type="password" name="pwd" id="pwd" required /></td>
                        </tr>
                        <tr class="form-row">
                            <td>이름</td>
                            <td><input type="text" name="name" id="name" required /></td>
                        </tr>
                        <tr class="form-row">
                            <td>이메일</td>
                            <td><input type="text" name="email" id="email" required /></td>
                        </tr>
                        <tr class="form-row">
                            <td>연락처</td>
                            <td><input type="text" name="phone" id="phone" required /></td>
                        </tr>
                        <tr class="form-row">
                            <td colspan="2">
                                <button class="btn-submit btn-small" onclick="joinCheck(form)">가입</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    
    <script src="${ctx}/js/join.js"></script>
<%@ include file= "../../part/footer.jsp" %>