<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/top.jsp"/>

<div id="content">
	<div class="row">
		<div style="max-width: 1000px;margin: 0 auto">
			<table class="table">
				<c:if test="${review ne null and not empty review}">
					<tr>
						<td colspan="2">
							<input type="text" name="reviewtitle" 
							class="form-control" placeholder="ReviewTitle"
							readonly value="${review.re_name}">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea rows="20" cols="60" 
							name="reviewcontent" class="form-control" 
							placeholder="ReviewContent"
							readonly>${review.re_content}</textarea>
						</td>
					</tr>
				</c:if>
				<tr>
					<td colspan="2">댓글</td>
				</tr>
				<tr>
					<td colspan="2" onclick="location.href='../comment/commentList.jsp?u_id=1 & re_num=1'">클릭시 댓글 수정 및 삭제 페이지로 갑니다</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="comment" 
						class="form-control" placeholder="Comment">
					</td>
					<td>
						<button type="button" class="btn btn-success" onclick="javascript:history.back()">뒤로가기</button>
						<button type="button" class="btn btn-success" onclick="location.href='commentInsert.jsp?u_id=1 & re_num=1'">댓글달기</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>

<jsp:include page="/foot.jsp"/>