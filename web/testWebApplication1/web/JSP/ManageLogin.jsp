<%-- 
    Document   : ManageLogin
    Created on : 5-Apr-2019, 4:29:29 PM
    Author     : Owner
--%>

<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String correctu = "admin";
            String user = request.getParameter("uname");
            String correctpsw = "admin";
            String pass = request.getParameter("psw");

            if (user.equalsIgnoreCase(correctu)) {
                if (pass.equalsIgnoreCase(correctpsw)) {
                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                } else {
                    response.sendRedirect("/testWebApplication1/Login");
                }
            } else {
                response.sendRedirect("/testWebApplication1/Login");
            }
        %>
    </body>
</html>
