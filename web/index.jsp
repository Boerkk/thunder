<%--
  Created by IntelliJ IDEA.
  User: 52305
  Date: 2022/1/13
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title></title>
<%--  <link rel="stylesheet" href="css/ys.css" />--%>
  <script src="js/jquery-1.12.4.js"></script>
  <style>
    *{
      margin: 0;
      padding: 0;
    }
    body{
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background: linear-gradient(200deg,#f3e7e9,#e3eeff);
    }
    .container{
      background-color: #fff;
      width: 650px;
      height: 415px;
      border-radius: 5px;
      box-shadow: 5px 5px 5px rgba(0,0,0,0.1);
      position: relative;
    }
    .form-box{
      position: absolute;
      top: -10%;
      left: 5%;
      background-color: #E6E000;
      width: 325px;
      height: 500px;
      border-radius: 5px;
      box-shadow: 2px 0 10px rgba(0,0,0,0.1);
      display: flex;
      justify-content: center;
      align-items: center;
      z-index: 2;
      transition: 0.5s ease-in-out;

    }
    .register-box,.login-box{
      display: flex;
      flex-direction: column;
      align-items: center;
      width: 100%;
    }
    .hidden{
      display: none;
      transition: 0.5s;
    }
    h1{
      text-align: center;
      margin-bottom: 25px;
      text-transform: uppercase;
      color: #fff;
      letter-spacing: 5px;
    }
    input{
      background-color: transparent;
      width: 70%;
      color: #fff;
      border: none;
      border-bottom: 1px solid rgba(255,255,255,0.4);
      padding: 10px 0;
      text-indent: 10px;
      margin: 8px 0;
      font-size: 14px;
      letter-spacing: 2px;
    }
    input::placeholder{
      color: #fff;
    }
    input:focus{
      color: #a262ad;
      outline: none;
      border-bottom: 1px solid #a262ad80;
      transition: 0.5s;
    }
    input:focus::placeholder{
      opacity: 0;
    }
    .form-box button{
      width: 70%;
      margin-top: 35px;
      background-color: #f6f6f6;
      outline: none;
      border-radius: 8px;
      padding: 13px;
      color: #a262ad;
      letter-spacing: 2px;
      border: none;
      cursor: pointer;
    }
    .form-box button:hover{
      background-color: #A262AD;
      color: #f6f6f6;
      transition: background-color 0.5s ease;
    }
    .con-box{
      width: 50%;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      position: absolute;
      top: 50%;
      transform: translateY(-50%);

    }
    .con-box.left{
      left: -2%;
    }
    .con-box.right{
      right: -2%;
    }
    .con-box h2{
      color: #8e9aaf;
      font-size: 25px;
      font-weight: bold;
      letter-spacing: 3px;
      text-align: center;
      margin-bottom: 4px;
    }
    .con-box p{
      font-size: 12px;
      letter-spacing: 2px;
      color: #8E9AAF;
      text-align: center;
    }
    .con-box h2 span,.con-box p span{
      color: #FFFA20;
    }
    .con-box img{
      width: 220px;
      height: 150px;
      opacity: 0.9;
      margin: 40px 0;
    }
    .con-box button{
      margin-top: 3%;
      background-color: #fff;
      color: #A262AD;
      border: 1px solid #D3B7D8;
      padding: 6px 10px;
      border-radius: 5px;
      letter-spacing: 1px;
      outline: none;
      cursor: pointer;
    }
    .con-box button:hover{
      background-color: #D3B7D8;
      color: #fff;
    }
    .register-box span,.login-box span{
      color: white;
      font-size: initial;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="form-box">
    <div class="register-box hidden" >
      <h1>register</h1>
      <input type="text" id="re_lname" name="lname" placeholder="用户名"/><span id="re_lnameMes">4-16位</span>
      <input type="email" id="re_email" name="email" placeholder="邮箱"/><span id="re_emailMes"></span>
      <input type="password" id="re_pwd" name="pwd" placeholder="密码"/><span id="re_pwdMes">6-16位大小写字母,数字,特殊字符3种</span><span id="re_pwdMes2"></span>
      <input type="password" id="re_pwdTwo" name="pwdConfirm" placeholder="确认密码"/><span id="re_pwdTwoMes"></span>
      <button>注册</button>
    </div>
    <div class="login-box">
      <h1>login</h1>
      <input type="text" id="lo_lname" name="lname" placeholder="用户名"/><span id="lo_lnameMes"></span>
      <input type="password" id="lo_pwd" name="pwd" placeholder="密码"/><span id="lo_pwdMes"></span>
      <input type="text" id="lo_code" name="code" placeholder="验证码"/><span id="codeMes"></span>
<%--      <input type="text" id="code" style="display: none"/>--%>
      <button id="getCode">获取验证码</button>
      <button id="login">登录</button>
    </div>
  </div>
  <div class="con-box left">
    <h2>欢迎来到<span>闪电物流</span></h2>
    <p>急速注册使用<span>闪电</span>之力</p>
    <img src="img/1.jpg" alt=""/>
    <h3><span>注册成功/注册失败</span></h3>
    <p>已有账号</p>
    <button id="toLogin">去登陆</button>
  </div>
  <div class="con-box right">
    <h2>欢迎来到<span>闪电物流</span></h2>
    <p>赶紧登录体验<span>闪电</span>感觉</p>
    <img src="img/2.jpg" alt=""/>
    <h3><span id="loginMes" style="display: none"></span></h3>
    <h3><span>${ErrorMes}</span></h3>
    <p>没有账号?</p>
    <button id="toRegister">去注册</button>
  </div>
</div>
<script>
  let login=document.getElementById('toLogin');
  let register=document.getElementById('toRegister');
  let form_box=document.getElementsByClassName('form-box')[0];
  let register_box=document.getElementsByClassName('register-box')[0];
  let login_box=document.getElementsByClassName('login-box')[0];
  register.addEventListener('click',()=>{
    form_box.style.transform='translateX(80%)';
    login_box.classList.add('hidden');
    register_box.classList.remove('hidden');
  })
  login.addEventListener('click',()=>{
    form_box.style.transform='translateX(0%)';
    register_box.classList.add('hidden');
    login_box.classList.remove('hidden');
  })

  //注册用户名校验
  $("#re_lname").blur(function () {
    var lname = $("#re_lname").val();
    $.post("/isLnameExist","lname="+lname,function (data) {
      if(data==1){
        //用户名存在
        $("#re_lnameMes").html("用户名已存在");
      }else {
        //用户名不存在
        var re_lname = $("#re_lname").val();
        // alert(judge.test(re_lname))
        if(re_lname.length<4||re_lname.length>16){
          $("#re_lnameMes").html("用户名必须在4-16位之间");
        }else {
          $("#re_lnameMes").html("");
          // $("#re_lnameMes2").html("");
        }
      }
    });
  });

  //注册邮箱校验
  $("#re_email").blur(function () {
    var email = $("#re_email").val();
    var judge = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    if(email==""){
      $("#re_emailMes").html("");
    }else {
      if(judge.test(email)){
        $.post("/isEmailExist","email="+email,function (data) {
          if(data==0){
            $("#re_emailMes").html("邮箱可用");
          }else {
            $("#re_emailMes").html("邮箱已存在");
          }
        })
      }else {
        $("#re_emailMes").html("邮箱格式错误");
      }
    }
  });

  //注册密码校验
  $("#re_pwd").blur(function () {
    //输入密码框值
    var pwd = $("#re_pwd").val();
    //密码确认框值
    var pwdTwo = $("#re_pwdTwo").val();
    //正则表达式大小写字母，数字，特殊字符选三种6到16位
    var judge = /^(?![\da-z]+$)(?![\dA-Z]+$)(?![\d!#$%^&_\-+.,*]+$)(?![a-zA-Z]+$)(?![a-z!#$%^&_\-+.,*]+$)(?![A-Z!#$%^&_\-+.,*]+$)[\da-zA-z!#$%^&_\-+.,*]{6,16}$/
    if(pwd!=""){
      if(!judge.test(pwd)){
        $("#re_pwdMes").html("密码必须在8-16位之间且包含大小");
        $("#re_pwdMes2").html("写字母，数字，特殊字符中三种");
      }else {
        $("#re_pwdMes").html("");
        $("#re_pwdMes2").html("");
      }
      if(pwd!=pwdTwo&&pwdTwo!=""){
        $("#re_pwdTwoMes").html("两次密码必须一致");
      }else {
        $("#re_pwdTwoMes").html("");
      }
    }else {
      $("#re_pwdMes").html("6-16位大小写字母,数字,特殊字符3种");
      $("#re_pwdMes2").html("");
    }
  });

  //注册密码确认校验
  $("#re_pwdTwo").blur(function () {
    //输入密码框值
    var pwd = $("#re_pwd").val();
    //密码确认框值
    var pwdTwo = $("#re_pwdTwo").val();
    if(pwdTwo==""){
      $("#re_pwdTwoMes").html("");
    }else {
      if(pwd!=pwdTwo){
        $("#re_pwdTwoMes").html("两次密码必须一致");
      }else {
        $("#re_pwdTwoMes").html("");
      }
    }
  });

  //登录按钮
  $("#login").click(function () {
    $.post("/login","lname="+$("#lo_lname").val()+"&pwd="+$("#lo_pwd").val()+"&code="+$("#lo_code").val(),function (data) {
      $("#loginMes").attr("style","display: inline");
      if(data==0){
        $("#loginMes").html("验证码错误");
      }else if(data==-1){
        $("#loginMes").html("用户名或者密码错误");
      }else if(data==-2){
        $("#loginMes").html("验证码超时");
      }else {
        $("#loginMes").attr("style","display: none");
        window.location.href='http://localhost:8080/getHome';
      }
      $("#lo_lnameMes").html("");
      $("#lo_pwdMes").html("");
    })
  })

  //60获取一次验证码
  var wait = 60;
  function time(codeBtn){
    if(wait==0){
      // $(codeBtn).attr("disable",false);
      // $(codeBtn).html("获取验证码");
      codeBtn.attr("disable",false);
      codeBtn.html("获取验证码")
      wait=60;
    }else {
      // $(codeBtn).attr("disable",true);
      // $(codeBtn).html(wait+"秒后重新发送");
      wait--;
      codeBtn.attr("disable",true);
      codeBtn.html(wait+"秒后重新发送")
      setTimeout(function () {
        time(codeBtn);
      },1000);
    }
  }

  //获取验证码按钮
  $("#getCode").click(function () {
    if(wait==60){
      $.post("/getCode","lname="+$("#lo_lname").val(),function (data) {
        if(data==1){
          $("#codeMes").html("请填写正确的用户名");
        }else {
          $("#codeMes").html("");
          time($("#getCode"));
        }
      })
    }
  })

  //登录用户名按钮
  $("#lo_lname").blur(function () {
    var lname = $("#lo_lname").val();
    if(lname.length==0){
      $("#lo_lnameMes").html("用户名不能为空");
    }else if(lname.length>16){
      $("#lo_lnameMes").html("用户名过长");
    }else {
      $("#lo_lnameMes").html("");
    }
  });

  //登录密码按钮
  $("#lo_pwd").blur(function () {
    var pwd = $("#lo_pwd").val();
    if(pwd.length==0){
      $("#lo_pwdMes").html("密码不能为空");
    }else {
      $("#lo_pwdMes").html("");
    }
  });

</script>
</body>
</html>
