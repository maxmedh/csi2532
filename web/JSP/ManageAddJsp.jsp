<%-- 
    Document   : ManageAddJsp
    Created on : 30-Mar-2019, 11:05:24 PM
    Author     : Owner
--%>

<%@page import="dat.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.athletes"%>
<%@page import="model.disciplines"%>
<%@page import="model.employesducojo"%>
<%@page import="model.epreuves"%>
<%@page import="model.installation"%>
<%@page import="model.officiels"%>
<%@page import="model.participant"%>
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

                if (request.getParameter("address") != null) {

                    String address = request.getParameter("address");
                    String capacite = request.getParameter("capacite");
                    String telephone = request.getParameter("telephone");

                    villageolympique vo = new villageolympique(address, capacite, telephone);
                    Data da = new Data();
                    da.addNew(vo);

                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                } if (request.getParameter("tid") != null) {

                    String tid = request.getParameter("tid");
                    String frequence = request.getParameter("frequence");
                    String ptdepart = request.getParameter("ptdepart");
                    String ptarrive = request.getParameter("ptarrive");
                    String itineraire = request.getParameter("itineraire");

                    servicetransport st = new servicetransport(tid, frequence, ptdepart, ptarrive, itineraire);
                    Data da = new Data();
                    da.addNew(st);

                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                } if (request.getParameter("nomsm") != null) {
                    
                    String nomsm = request.getParameter("nomsm");
                    String description = request.getParameter("description");
                    String numerotelephone = request.getParameter("numerotelephone");
                    String adresse = request.getParameter("adresse");
                    
                    servicemedicaux sm = new servicemedicaux(description, numerotelephone, adresse, nomsm);
                    Data da = new Data();
                    da.addNew(sm);
                    
                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                } if (request.getParameter("iid") != null) {
                    
                    String iid = request.getParameter("iid");
                    String nom = request.getParameter("nom");
                    String capacite = request.getParameter("capacite");
                    String addresse = request.getParameter("addresse");
                    String usage = request.getParameter("usage");
                    String description = request.getParameter("description");
                    
                    installation i = new installation(iid, nom, capacite, addresse, usage, description);
                    Data da = new Data();
                    da.addNew(i);
                    
                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                }
           
        %>
    </body>
</html>
