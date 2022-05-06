package com.example.jspcrud;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDAO loginDAO;

    public void init() {
        loginDAO = new LoginDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");

        LoginBean loginBean = new LoginBean();
        loginBean.setUsername(username);
        loginBean.setPassword(password);
        loginBean.setFirst_name(first_name);
        loginBean.setLast_name(last_name);

        try {
            loginDAO.registerUser(loginBean);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("login.jsp");
    }
}