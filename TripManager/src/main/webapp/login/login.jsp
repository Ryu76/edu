<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/top.jsp" />



<div id="content">
   
        <form name="loginF" action="loginEnd.do" method="post">
           <table class="table" style="width:50%;margin:auto;">
            <tr>
                <th colspan="4" style = "text-align:center"><h1>Login</h1></th>
             </tr>
             <tr>
                <td colspan="1" style="text-align:right"><b>아이디</b><!-- </td>
                <td style="text-align:left"> -->
                   <input type="text" name="userid" value="${cookie.u_id.value}"
                   autofocus="autofocus" placeholder="User ID" class="box">
                   <%-- ${cookie.키.value} --%>
                </td>
             </tr>
             <tr>
                <td colspan="1" style="text-align:right"><b>비밀번호</b>
                <!-- </td>
                <td style="text-align:center"> -->
                   <input type="password" name="pwd" 
                    placeholder="Password" class="box">
                </td>
             </tr>
              <tr>
                  <td></td>
                  <td colspan="1" style="text-align:left;">
                      <label for="saveId">
                          <input type="checkbox" name="saveId"
                     	<c:if test="${cookie.uid != null}">
                   		checked   
                		</c:if>  
                          id="saveId">아이디 저장
                             
                      </label>
                  </td>
              </tr>
              <tr>
                 <td colspan="4" style="text-align:center">
                      <button type="button" class="btn" onclick="loginCheck()">로그인</button>
                  </td>
              </tr>
              <tr>
                  <td id="option" colspan="4" style="text-align:center">
                  <a id="logina" href="#a">회원가입</a><a>  |  </a>
                  <a id="logina" onclick="location.href='findid.do'">아이디 찾기</a><a>  |  </a>
                  <a id="logina"onclick="location.href='findpw.do'">비밀번호 찾기</a></td>
                  <!-- <td id="option"><a href="#a">아이디 찾기</a></td>
                  <td id="option"><a href="#a">비밀번호 찾기</a></td> -->
              </tr>
           </table>
        </form>
     </div>
     <script>
        var loginCheck = function(){
           if(!loginF.userid.value){
              alert('아이디를 입력하세요');
              loginF.userid.focus();
              return;
           }
           if(!loginF.pwd.value){
              alert('비밀번호를 입력하세요');
              loginF.pwd.focus();
              return;
           }
           loginF.submit();
        }
     </script>


<jsp:include page="/foot.jsp" />