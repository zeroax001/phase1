package com.servlet;

import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class registerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String rePassword = req.getParameter("repassword");
        if (!"".equals(username.trim()) && username != null && !"".equals(password) && password != null && password.equals(rePassword) ) {
            User user = new User(username, password);

            HttpSession session = req.getSession();

            req.getRequestDispatcher("index.servlet").forward(req, resp);
        }else if (!password.equals(rePassword)){
            req.setAttribute("msg","两次输入的密码不一致");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
        else {
            req.setAttribute("msg", "用户名或密码不能为空");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
    }
}
