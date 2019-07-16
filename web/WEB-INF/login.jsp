<%--
  Created by IntelliJ IDEA.
  User: pcf
  Date: 2019/7/15
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function check() {
            var username = document.getElementsByName("username");
            var password = document.getElementsByName("password");
            if (!username.values()){
                alert("用户名不能为空");
                return false;
            }else if (!password.value){
                alert("密码不能为空");
                return false;
            }else{
                return true;
            }
        }
        
    </script>
</head>
<body>
    <form action="loginServlet" method="post" onsubmit="check()">
        用户名：<input type="text" name="username" value="username"/><br/>
        密码：<input type="password" name="password" ><br/>
        <input type="submit" value="登录"/>
        <a href="register.jsp">注册</a>
    </form>

</body>
</html>
