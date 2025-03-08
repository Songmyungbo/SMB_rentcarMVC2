<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file= "../../part/header.jsp" %>

    <div class="inner">
    <h2>차량 업로드</h2>
    <form action="${ctx}/insertCarProcess.do" method="post" enctype="multipart/form-data">
        <table border="1">
            <tr>
                <th>차량 이름</th>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <th>카테고리</th>
                <td>
                    <select name="category" required>
                        <option value="1">소형</option>
                        <option value="2">중형</option>
                        <option value="3">대형</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>가격 (일 단위)</th>
                <td><input type="number" name="price" min="0" required></td>
            </tr>
            <tr>
                <th>승차 인원</th>
                <td><input type="number" name="usepeople" min="1" required></td>
            </tr>
            <tr>
                <th>총 수량</th>
                <td><input type="number" name="total_qty" min="0" required></td>
            </tr>
            <tr>
                <th>회사</th>
                <td><input type="text" name="company" required></td>
            </tr>
            <tr>
                <th>차량 이미지</th>
                <td><input type="file" name="img" accept="image/*" required></td>
            </tr>
            <tr>
                <th>차량 정보</th>
                <td><textarea name="info" rows="5" cols="50" required></textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit">업로드</button>
                    <button type="button" onclick="history.back()">취소</button>
                </td>
            </tr>
        </table>
    </form>
</div>

    
 <%@ include file= "../../part/footer.jsp" %>