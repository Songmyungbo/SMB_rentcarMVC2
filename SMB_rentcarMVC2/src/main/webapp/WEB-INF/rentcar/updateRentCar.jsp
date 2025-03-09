<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../part/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx}/css/updateRentCar.css?after"/>

<div class="inner">
    <div class="page-center">
        <h2 class="update-title">차량 정보 수정</h2>
        <form action="${ctx}/updateRentCarAprocess.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="num" value="${car.num}">
            <table class="update-table">
                <tr class="update-row">
                    <th>차량 이름</th>
                    <td><input type="text" name="name" value="${car.name}" required class="input-field"></td>
                </tr>
                <tr class="update-row">
                    <th>카테고리</th>
                    <td>
                        <select name="category" required class="input-field">
                            <option value="1" ${car.category == 1 ? 'selected' : ''}>소형</option>
                            <option value="2" ${car.category == 2 ? 'selected' : ''}>중형</option>
                            <option value="3" ${car.category == 3 ? 'selected' : ''}>대형</option>
                        </select>
                    </td>
                </tr>
                <tr class="update-row">
                    <th>가격 (일 단위)</th>
                    <td><input type="number" name="price" value="${car.price}" min="0" required class="input-field"></td>
                </tr>
                <tr class="update-row">
                    <th>승차 인원</th>
                    <td><input type="number" name="usepeople" value="${car.usepeople}" min="1" required class="input-field"></td>
                </tr>
                <tr class="update-row">
                    <th>총 수량</th>
                    <td><input type="number" name="totalQty" value="${car.totalQty}" min="0" required class="input-field"></td>
                </tr>
                <tr class="update-row">
                    <th>회사</th>
                    <td><input type="text" name="company" value="${car.company}" required class="input-field"></td>
                </tr>
                <tr class="update-row">
                    <th>차량 이미지</th>
                    <td>
                        <div class="car-image">
                            <img src="${ctx}/img/${car.img}">
                        </div>
                        <input type="file" name="img" accept="image/*" class="input-field">
                        <input type="hidden" name="currentImg" value="${car.img}">
                    </td>
                </tr>
                <tr class="update-row">
                    <th>차량 정보</th>
                    <td><textarea name="info" rows="5" cols="50" required class="input-field">${car.info}</textarea></td>
                </tr>
                <tr class="update-row">
                    <td colspan="2" class="button-cell">
                        <button type="submit" class="action-btn update-btn">수정 완료</button>
                        <button type="button" class="action-btn cancel-btn" onclick="history.back()">취소</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

<%@ include file="../../part/footer.jsp"%>