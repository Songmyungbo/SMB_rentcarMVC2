<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx}/css/insertCar.css?after"/>

<div class="inner">
    <div class="page-center">
        <h2 class="upload-title">차량 업로드</h2>
        <form action="${ctx}/insertCarProcess.do" method="post" enctype="multipart/form-data">
            <table class="upload-table">
                <tr class="upload-row">
                    <th>차량 이름</th>
                    <td><input type="text" name="name" required class="input-field"></td>
                </tr>
                <tr class="upload-row">
                    <th>카테고리</th>
                    <td>
                        <select name="category" required class="input-field">
                            <option value="1">소형</option>
                            <option value="2">중형</option>
                            <option value="3">대형</option>
                        </select>
                    </td>
                </tr>
                <tr class="upload-row">
                    <th>가격 (일 단위)</th>
                    <td><input type="number" name="price" min="0" required class="input-field"></td>
                </tr>
                <tr class="upload-row">
                    <th>승차 인원</th>
                    <td><input type="number" name="usepeople" min="1" required class="input-field"></td>
                </tr>
                <tr class="upload-row">
                    <th>총 수량</th>
                    <td><input type="number" name="total_qty" min="0" required class="input-field"></td>
                </tr>
                <tr class="upload-row">
                    <th>회사</th>
                    <td><input type="text" name="company" required class="input-field"></td>
                </tr>
                <tr class="upload-row">
                    <th>차량 이미지</th>
                    <td><input type="file" name="img" accept="image/*" required class="input-field"></td>
                </tr>
                <tr class="upload-row">
                    <th>차량 정보</th>
                    <td><textarea name="info" rows="5" cols="50" required class="input-field"></textarea></td>
                </tr>
                <tr class="upload-row">
                    <td colspan="2" class="button-cell">
                        <button type="submit" class="action-btn upload-btn">업로드</button>
                        <button type="button" class="action-btn cancel-btn" onclick="history.back()">취소</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

<%@ include file="../../part/footer.jsp"%>