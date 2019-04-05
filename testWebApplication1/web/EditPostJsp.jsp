<%-- 
    Document   : EditPostJsp
    Created on : 31-Mar-2019, 5:31:23 PM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body>
        <h1>Edit villageolympique</h1>
        <div style="width: 900px; margin-left: auto; margin-right: auto;">
         
            <c:forEach items="${getVillageById}" var="p">
                <form action="JSP/ManageEditJsp.jsp" method="post">
                    <input type="hidden" value="${p.address}">
                    Address:<br>
                    <input type="text" value="${p.address}" name="address" style="width:200px"><br>
                    Capacite:<br>
                    <input type="text" value="${p.capacite}" name="capacite" style="width:200px"><br>
                    Telephone:<br>
                    <input type="text" value="${p.telephone}" name="telephone" style="width:200px"><br>

                    <input type="submit" value="Submit">
                </form>
            </c:forEach>
     
            
        </div>
    </body>
</html>
