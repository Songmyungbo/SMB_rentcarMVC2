<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../part/header.jsp" %>
    <div class="inner">
    <h2>차량 정보 수정</h2>
    <form action="${ctx}/updateRentCarAprocess.do" method="post" enctype="multipart/form-data">
        <input type="hidden" name="num" value="${car.num}">
        <table border="1">
            <tr>
                <th>차량 이름</th>
                <td><input type="text" name="name" value="${car.name}" required></td>
            </tr>
            <tr>
                <th>카테고리</th>
                <td>
                    <select name="category" required>
                        <option value="1" ${car.category == 1 ? 'selected' : ''}>소형</option>
                        <option value="2" ${car.category == 2 ? 'selected' : ''}>중형</option>
                        <option value="3" ${car.category == 3 ? 'selected' : ''}>대형</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>가격 (일 단위)</th>
                <td><input type="number" name="price" value="${car.price}" min="0" required></td>
            </tr>
            <tr>
                <th>승차 인원</th>
                <td><input type="number" name="usepeople" value="${car.usepeople}" min="1" required></td>
            </tr>
            <tr>
                <th>총 수량</th>
                <td><input type="number" name="totalQty" value="${car.totalQty}" min="0" required></td>
            </tr>
            <tr>
                <th>회사</th>
                <td><input type="text" name="company" value="${car.company}" required></td>
            </tr>
            <tr>
                <th>차량 이미지</th>
                <td>
                    <img src="${ctx}/img/${car.img}" width="200">
                    <input type="file" name="img" accept="image/*">
                    <input type="hidden" name="currentImg" value="${car.img}">
                </td>
            </tr>
            <tr>
                <th>차량 정보</th>
                <td><textarea name="info" rows="5" cols="50" required>${car.info}</textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit">수정 완료</button>
                    <button type="button" onclick="history.back()">취소</button>
                </td>
            </tr>
        </table>
    </form>
</div>

    
 <%@ include file= "../../part/footer.jsp" %>