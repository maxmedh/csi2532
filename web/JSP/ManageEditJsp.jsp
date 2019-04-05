<%-- 
    Document   : ManageEditJsp
    Created on : 31-Mar-2019, 5:40:05 PM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dat.Data"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (request.getParameter("address") != null) {
                String address = request.getParameter("address");
                String capacite = request.getParameter("capacite");
                String telephone = request.getParameter("telephone");

                Data da = new Data();
                da.edit(address, capacite, telephone);

                response.sendRedirect("/testWebApplication1/AllPostJsp");
                
            } else if (request.getParameter("tid") != null) {
                String tid = request.getParameter("tid");
                String frequence = request.getParameter("frequence");
                String ptdepart = request.getParameter("ptdepart");
                String ptarrive = request.getParameter("ptarrive");
                String itineraire = request.getParameter("itineraire");

                Data da = new Data();
                da.edit(tid,frequence,ptdepart,ptarrive,itineraire);

                response.sendRedirect("/testWebApplication1/AllPostJsp");
            }
        %>
    </body>
</html>
