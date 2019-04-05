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
                //Village Olympique
                if (request.getParameter("address") != null) {

                    String address = request.getParameter("address");
                    String capacite = request.getParameter("capacite");
                    String telephone = request.getParameter("telephone");

                    villageolympique vo = new villageolympique(address, capacite, telephone);
                    Data da = new Data();
                    da.addNew(vo);

                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                } 
                //Service Transport
                if (request.getParameter("tid") != null) {

                    String tid = request.getParameter("tid");
                    String frequence = request.getParameter("frequence");
                    String ptdepart = request.getParameter("ptdepart");
                    String ptarrive = request.getParameter("ptarrive");
                    String itineraire = request.getParameter("itineraire");

                    servicetransport st = new servicetransport(tid, frequence, ptdepart, ptarrive, itineraire);
                    Data da = new Data();
                    da.addNew(st);

                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                } 
                //Service Medicaux
                if (request.getParameter("nomsm") != null) {
                    
                    String nomsm = request.getParameter("nomsm");
                    String description = request.getParameter("description");
                    String numerotelephone = request.getParameter("numerotelephone");
                    String adresse = request.getParameter("adresse");
                    
                    servicemedicaux sm = new servicemedicaux(description, numerotelephone, adresse, nomsm);
                    Data da = new Data();
                    da.addNew(sm);
                    
                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                } 
                //Installation
                if (request.getParameter("iid") != null) {
                    
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
                //Disciplines
                if (request.getParameter("nomd") != null) {
                    
                    String nomd = request.getParameter("nomd");
                    String epreuves = request.getParameter("epreuves");
                     
                    disciplines d = new disciplines(nomd, epreuves);
                    Data da = new Data();
                    da.addNew(d);
                    
                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                }
                //Athletes
                if (request.getParameter("aid") != null) {
                    
                    String aid = request.getParameter("aid");
                    String prenom = request.getParameter("prenom");
                    String nom = request.getParameter("nom");
                    String adressevillage = request.getParameter("adressevillage");
                    String adressepermanente = request.getParameter("adressepermanente");
                    String nationalite = request.getParameter("nationalite");
                    String medaille = request.getParameter("medaille");
                    
                    athletes a = new athletes(aid, prenom, nom, adressevillage, adressepermanente, nationalite, medaille);
                    Data da = new Data();
                    da.addNew(a);
                    
                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                } 
                //Employes
                if (request.getParameter("eid") != null) {
                    
                    String eid = request.getParameter("eid");
                    String prenom = request.getParameter("prenom");
                    String nom = request.getParameter("nom");
                    String adressevillage = request.getParameter("adressevillage");
                    String adressepermanente = request.getParameter("adressepermanente");
                    String numerotelephone = request.getParameter("numerotelephone");
                    
                    employesducojo e = new employesducojo(eid, prenom, nom, adressevillage, adressepermanente, numerotelephone);
                    Data da = new Data();
                    da.addNew(e);
                    
                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                } 
                //Officiels
                if (request.getParameter("oid") != null) {
                    
                    String oid = request.getParameter("oid");
                    String prenom = request.getParameter("prenom");
                    String nom = request.getParameter("nom");
                    String adressevillage = request.getParameter("adressevillage");
                    String type = request.getParameter("type");
                    
                    officiels o = new officiels(oid, prenom, nom, adressevillage, type);
                    Data da = new Data();
                    da.addNew(o);
                    
                    response.sendRedirect("/testWebApplication1/AllPostJsp");
                } 
           
        %>
    </body>
</html>
