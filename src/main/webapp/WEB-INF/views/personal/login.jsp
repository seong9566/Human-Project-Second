<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="d-flex justify-content-center">
   <div style="width: 400px;">
      <br>
      <form>
         <div class="d-flex justify-content-between">
            <div class="d-flex" style="margin-bottom: 40px; margin-left: 33px;">
               아이디 <input id="login_id" type="text" class="form-control loginInputForm"
                  placeholder="아이디를 입력하세요">
            </div>
         </div>
         <div class="d-flex justify-content-between">
            <div class="d-flex" style="margin-bottom: 20px;  margin-left: 13px;">
               비밀번호 <input id="login_password" type="password" class="form-control loginInputForm"
                  placeholder="비밀번호를 입력하세요">
            </div>
         </div>
      <div class="d-flex justify-content-around">
         <button id="btnLogin" type="button" class="btn btn-primary login_btn">로그인</button>
         <button id="btnPersonalJoin" type="button" class="btn btn-primary login_btn">개인용 회원가입</button>
         <button id="btnCompanyJoin" type="button" class="btn btn-primary login_btn">기업용 회원가입</button>
      </div>
      </form>
   </div>
</div>

<script src="/js/login.js"></script>
<%@ include file="../layout/footer.jsp"%>
