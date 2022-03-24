<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/top.jsp"/>

<div id="content">
	<div class="row">
		<div style="max-width: 1000px;margin: 0 auto">
			<table class="table">
				<tr>
					<td>
						<textarea rows="15" cols="40" readonly>#</textarea>
					</td>
				</tr>
				<tr>
					<td>
						<button type="button" class="btn btn-success" onclick="javascript:history.back()">뒤로가기</button>
						<button type="button" class="btn btn-success" onclick="#">댓글삭제</button>
						<button type="button" class="btn btn-success" onclick="#">댓글수정</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>

<jsp:include page="/foot.jsp"/>