<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/top.jsp"/>
<script>
	function Updatecheck() {
		if(!boardF.reviewtitle.value){
			alert('제목을 입력해주세요');
			boardF.reviewtitle.focus();
			return;
		}
		if(!boardF.reviewcontent.value){
			alert('글내용을 입력해주세요');
			boardF.reviewcontent.focus();
			return;
		}
		boardF.submit();
	}
</script>
<div id="content">
	<div class="row">
		<div style="max-width: 1000px;margin: 0 auto">
			<form name="boardF" action="reviewUpdateEnd.jsp" method="post">
				<table class="table">
					<tr>
						<td>제목</td>
						<td>
							<input type="text" name="reviewtitle" 
							class="form-control" placeholder="ReviewTitle">
						</td>
					</tr>
					<tr>
						<td>글내용</td>
						<td>
							<textarea rows="20" cols="60" 
							name="reviewcontent" class="form-control" placeholder="ReviewContent"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="button" class="btn btn-success" onclick="javascript:history.back()">뒤로가기</button>
							<button type="button" class="btn btn-success" onclick="return Updatecheck()">수정하기</button>
							<button type="reset" class="btn btn-warning">다시쓰기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>

<jsp:include page="/foot.jsp" />