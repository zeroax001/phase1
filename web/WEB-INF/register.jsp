<%--
  Created by IntelliJ IDEA.
  User: pcf
  Date: 2019/7/15
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <script type="text/javascript">
        function check() {
            var username = document.getElementsByName("username");
            var password = document.getElementsByName("password");
            var rePassword = document.getElementsByName("repassword");
            if(!username.value){
                alert("用户名不能为空");
                return false;
            }
            if(!password.value){
                alert("密码不能为空");
                return false;
            }if(!rePassword.value){
                alert("再次输入的密码不能为空");
                return false;
            }
            if(password.value!=rePassword.value){
                alert("两次输入的密码不一致")
                return false;
            }
            return true;
        }
    </script>


</head>
<body>
    %msg%
    <form action="" method="post" onsubmit="check()" >
        用户名：<input type="text" name="username" >
        密码：<input type="password" name="password"><br/>
        确认密码：<input type="repassword" name="password" ><br/>
        <input type="submit" value="注册"/>

    </form>

</body>
</html>
