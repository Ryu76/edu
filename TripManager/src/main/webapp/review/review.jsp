<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/top.jsp" />
<div id="content">
	<div class="row">
		<div style="max-width: 1000px; margin: 0 auto">
			<!-- 아이디가 review인 td는 스타일을 줬어용-------------------------------------------------------------------->
			<table class="table">
				<tr>
					<td>제목</td>
					<td>작성자</td>
					<td>작성한 날짜</td>
				</tr>
				<c:if test="${reviewArr eq null or empty reviewArr}">
					<tr>
						<td colspan="3"><b>등록된 리뷰가 없습니다</b></td>
					</tr>
				</c:if>
				<c:if test="${reviewArr ne null and not empty reviewArr}">
					<c:forEach var="review" items="${reviewArr}">
						<tr onclick="goCheck('${review.re_num}')">
							<td>${review.re_name}</td>
							<td>${review.u_id}</td>
							<td>${review.re_date}</td>
						</tr>
					</c:forEach>
				</c:if>
				<tr>
					<td colspan="3">
						<button type="button" class="btn btn-success"
							onclick="location.href='reviewList.jsp?u_id=1'">작성한 리뷰보기</button>
						<button type="button" class="btn btn-warning"
							onclick="location.href='reviewInsert.do'">방명록 작성</button>
					</td>
				</tr>
			</table>
		</div>
		<!--------------------------------------------------------------------------------------------------------->
	</div>
</div>
<form name="f">
	<input type="hidden" name="re_num" value="${review.re_num }">
</form>
<script>
	function goCheck(re_num) {
		/* alert(re_num); */
		f.re_num.value = re_num;
		f.action="reviewCheck.do";
		f.method="post";
		f.submit();
	}
</script>
<jsp:include page="/foot.jsp" />