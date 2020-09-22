<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script>
      $(function () {
        $("#username").blur(function () {

          var username=$(this).val();

          $.get("/ajax_json/checkNameServlet",{username:username},function (data) {
              var span=$("#ss");
            alert(span.val());
            if(data.userExsit){
              //用户名存在
              span.css("color","red");
              span.html(data.msg);
            }else{
              //用户名不存在
              span.css("color","green");
              span.html(data.msg);
            }
          });
        });
      })
    </script>
  </head>
  <body>
  <div class="container" style="position:absolute;top:20%;left: 40%;width: 400px;">

      <form >
        <div class="form-group">
          <label for="username">用户名</label>
          <input type="text" class="form-control" id="username" >
        </div>
        <div class="form-group">
          <label for="password">密码</label>
          <input type="password" class="form-control" id="password" >
        </div>
        <div class="form-group">
          <label for="checkcode">验证码</label>

          <img src="/checkNameServlet" id="checkcode">
          <a href="javascript:">看不清？点击一下</a>
        </div>

        <button type="submit" class="btn btn-default " btn-lg>登录</button>
      </form>

  </div>
  </body>
</html>
