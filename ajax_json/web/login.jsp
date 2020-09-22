<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script>
    function refreshCode() {
        var vcode=document.getElementById("vcode");
        vcode.src="${pageContext.request.contextPath}/checkCodeServlet?time="+new Date().getTime();
    }
</script>
<body>
<div class="container" style="position: absolute;top:20%;left: 30%;width: 400px">

    <form >
        <div class="form-group">
            <label for="username">用户名</label>
            <input type="text" class="form-control" id="username" >
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input type="password" class="form-control" id="password" >
        </div>
        <div class="form-inline">
            <label for="checkcode">验证码</label>
            <input type="password" class="form-control" id="checkcode" >
            <a href="javascript:refreshCode();">
                <img src="${pageContext.request.contextPath}/checkCodeServlet" title="看不清点击刷新" id="vcode"/>
            </a>
        </div>

        <div class="form-group" style="text-align: center;">
            <input class="btn btn btn-primary" type="submit" value="登录">
        </div>
    </form>
    <div class="alert alert-warning alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" >
            <span>&times;</span>
        </button>
        <strong>登录失败!</strong>
    </div>
</div>
</body>
</html>

