<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="assets/css/login.css">

<!DOCTYPE html>
<p class="tip"></p>
<div class="cont">
  <div class="form sign-in">
    <h2>여행시작하기,</h2>
    <label>
      <span>이메일</span>
      <input type="email" />
    </label>
    <label>
      <span>비밀번호</span>
      <input type="password" />
    </label>
    <p class="forgot-pass">비밀번호를 잊으셨나요?</p>
    <button type="button" class="submit">시작</button>
    <center>
    <button class="loginBtn loginBtn--facebook">
  	Login with Facebook
	</button>
	<BR>
	<button class="loginBtn loginBtn--google">
	  Login with Google
	  </center>
</button>
  </div>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <h2>처음 오셨나요?</h2>
        <p></p>
      </div>
      <div class="img__text m--in">
        <h2>가입하기</h2>
        <p></p>
      </div>
      <div class="img__btn">
        <span class="m--up">가입하기</span>
        <span class="m--in">로그인 하기</span>
      </div>
    </div>
    <div class="form sign-up">
      <h2>두근두근 여행,</h2>
      <label>
        <span>이름</span>
        <input type="text" />
      </label>
      <label>
        <span>이메일</span>
        <input type="email" />
      </label>
      <label>
        <span>비밀번호</span>
        <input type="password" />
      </label>
      <button type="button" class="submit">가입하기</button>
      <button type="button" class="fb-btn">Join with <span>facebook</span></button>
    </div>
  </div>
</div>

<a href="https://dribbble.com/shots/3306190-Login-Registration-form" target="_blank" class="icon-link">
  <img src="http://icons.iconarchive.com/icons/uiconstock/socialmedia/256/Dribbble-icon.png">
</a>
<a href="https://twitter.com/NikolayTalanov" target="_blank" class="icon-link icon-link--twitter">
  <img src="https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-128.png">
</a>

<script src="./assets/js/login.js"></script>