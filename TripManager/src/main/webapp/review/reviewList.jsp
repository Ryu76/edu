<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/top.jsp"/>
<div id="content">
	<div class="row">
		<div style="max-width: 1000px;margin: 0 auto">
			<table class="table">
				<tr>
					<td>제목</td>
					<td>작성자</td>
					<td>작성한 날짜</td>
					<td>수정|삭제</td>
				</tr>
				<tr>
					<td>11111111111</td>
					<td>11111111111</td>
					<td>1111111111111111</td>
					<td><a href="reviewUpdate.jsp">수정</a> | <a href="reviewDelete.jsp">삭제</a></td>
				</tr>
				<tr>
					<td colspan="4">
						<button type="button" class="btn btn-success" onclick="javascript:history.back()">뒤로가기</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<jsp:include page="/foot.jsp"/>