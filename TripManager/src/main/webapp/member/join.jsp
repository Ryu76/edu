<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/top.jsp"/>


<style>
.t1 {
	margin: 8px;
	color:#064635;
	text-align:right;
	
}
 .table{
 	
	white-space: nowrap;
	width: 40%;
	margin: auto;
	
}
 .box{
 	margin: 8px;
	padding: 6px;
	border: 1px solid silver;
	width: 60%;
	float: left;
}
.btn2 {
	
	
}
.btn {
	width:30%;
	background:green; 
	color:white;"
}

</style>

<div id = "content2">
<br>
   <h1 style="text-align:left; color:#064635;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>회원가입</b></h1>
   <br><br>
   <hr style="width:80%; margin:auto; color:#F90" >
    <br>
   
   <form name="mf" action="joinEnd.do" method="post" >
      <table class="table" style="border-collapse:collapse; border:1px #F90 solid;">
         <tr>
            <td class="t1" style="vertical-align:middle"><b>이 름</b></td>
            <td class="t2">
            <input type="text" name="name" placeholder="이름을 입력하세요." class="box" required="required">
            </td>
         </tr>
         <tr>
            <td class="t1" style="vertical-align:middle"><b>아이디</b></td>
            <td class="t2" id="ch">
            <input type="text" name="userid" placeholder="사용할 아이디를 입력하세요." class="box" 
            required="required" readonly>
            <button type="button" class="btn2" onclick="openWin()" >중복체크</button>
            </td>
         </tr>
         <tr>
            <td class="t1" style="vertical-align:middle"><b>비밀번호</b></td>
            <td class="t2">
            <input type="password" name="pwd" placeholder="사용할 비밀번호를 입력하세요." class="box" >
            </td>
         </tr>
         <tr>
            <td class="t1" style="vertical-align:middle"><b>비밀번호 확인</b></td>
            <td class="t2">
            <input type="password" name="pwd2" placeholder="한 번 더 입력하세요." class="box" required="required">
            </td>
         </tr>
         <tr>
            <td class="t1" style="vertical-align:middle"><b>연락처</b></td>
            <td class="t2">
            <input type="text" name="phone" required maxlength="11" placeholder="전화번호를 입력하세요." class="box">
            </td>
         </tr>
         <tr>
            <td class="t1" style="vertical-align:middle"><b>이메일</b></td>
            <td class="t2">
            <input type="text" name="email" placeholder="이메일을 입력하세요." class="box">
            </td>
         </tr>
         <tr>
         
            <td class="t1" style="vertical-align:middle"><b>거주지</b></td>
            <td class="t2">
            <select name="loc" class="box">
  			<option disabled selected>지역선택</option>
  			<option value="apple">서울</option>
 			<option value="orange">경기도</option>
 			<option value="grape">강원도</option>
  			<option value="melon">충청북도</option>
  			<option value="melon">충청남도</option>
  			<option value="melon">전라북도</option>
  			<option value="melon">전라남도</option>
  			<option value="melon">경상북도</option>
  			<option value="melon">경상남도</option>
  			<option value="melon">제주특별자치도</option>
				</select>
         </tr>
      
         <tr>
            <td colspan="2" style="text-align:center">
               <button type="button" onclick="Check()" class="btn" >회원가입</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <button type="reset" class="btn">다시쓰기</button>
            </td>
         </tr>
      </table>
   </form>
</div>
<script>
   let win;
   function openWin(){
      win=open("idCheck.do","idCheck","width=400, height=400, left=100,top=100");
   }//------------------------
    
   function Check() {
      if(!mf.name.value){
         alert('이름을 입력하세요');
         mf.name.focus();
         return;
      }
      if(!mf.userid.value){
         alert('아이디를 입력하세요');
         mf.userid.focus();
         return;
      }
      if(!mf.pwd.value){
         alert('비밀번호를 입력하세요');
         mf.pwd.focus();
         return;
      }
      if(mf.pwd.value != mf.pwd2.value){
         alert('비밀번호가 다릅니다.');
         mf.pwd2.select();
         return;
      }
      if(!mf.phone.value){
         alert('전화번호를 입력하세요');
         mf.phone.focus();
         return;
         }
         
      if(!mf.email.value){
         alert('이메일을 입력하세요');
         mf.addr1.focus();
         return;
         }
      
      if(!mf.loc.value){
          alert('거주지를 입력하세요');
          mf.addr1.focus();
          return;
          }
      mf.submit(); // 서버에 전송
   }
</script>

<jsp:include page="/foot.jsp"/>