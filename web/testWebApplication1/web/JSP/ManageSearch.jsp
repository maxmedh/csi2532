<%-- 
    Document   : ManageSearch
    Created on : 5-Apr-2019, 4:49:10 PM
    Author     : Owner
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dat.Data"%>
<%@page import="model.athletes"%>
<%@page import="model.disciplines"%>
<%@page import="model.employesducojo"%>
<%@page import="model.installation"%>
<%@page import="model.officiels"%>
<%@page import="model.servicemedicaux"%>
<%@page import="model.servicetransport"%>
<%@page import="model.villageolympique"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String query = request.getParameter("search");
            System.out.print(query);
            System.out.print(Data.getVillageById(query));
            
        %>
    </body>
</html>
