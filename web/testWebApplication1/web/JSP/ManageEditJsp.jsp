<%-- 
    Document   : ManageEditJsp
    Created on : 31-Mar-2019, 5:40:05 PM
    Author     : Owner
--%>

<%@page import="model.installation"%>
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
            //Village Olympique
            if (request.getParameter("address") != null) {
                String address = request.getParameter("address");
                String capacite = request.getParameter("capacite");
                String telephone = request.getParameter("telephone");

                Data da = new Data();
                da.editVO(address, capacite, telephone);

                response.sendRedirect("/testWebApplication1/AllPostJsp");

            } //Service Transport
            else if (request.getParameter("tid") != null) {
                String tid = request.getParameter("tid");
                String frequence = request.getParameter("frequence");
                String ptdepart = request.getParameter("ptdepart");
                String ptarrive = request.getParameter("ptarrive");
                String itineraire = request.getParameter("itineraire");

                Data da = new Data();
                da.editST(tid, frequence, ptdepart, ptarrive, itineraire);

                response.sendRedirect("/testWebApplication1/AllPostJsp");
            } //Service Medicaux
            else if (request.getParameter("nomsm") != null) {
                String nomsm = request.getParameter("nomsm");
                String description = request.getParameter("description");
                String numerotelephone = request.getParameter("numerotelephone");
                String adresse = request.getParameter("adresse");

                Data da = new Data();
                da.editSM(nomsm, description, numerotelephone, adresse);

                response.sendRedirect("/testWebApplication1/AllPostJsp");

            } //Installation
            else if (request.getParameter("iid") != null) {
                String iid = request.getParameter("iid");
                String nom = request.getParameter("nom");
                String capacite = request.getParameter("capacite");
                String addresse = request.getParameter("addresse");
                String usage = request.getParameter("usage");
                String description = request.getParameter("description");

                Data da = new Data();
                da.editI(iid, nom, capacite, addresse, usage, description);

                response.sendRedirect("/testWebApplication1/AllPostJsp");
            } //Disciplines
            else if (request.getParameter("nomd") != null) {
                String nomd = request.getParameter("nomd");
                String epreuves = request.getParameter("epreuves");

                Data da = new Data();
                da.editD(nomd, epreuves);
                
                response.sendRedirect("/testWebApplication1/AllPostJsp");
            } //Athletes
            else if (request.getParameter("aid") != null) {
                String aid = request.getParameter("aid");
                String prenom = request.getParameter("prenom");
                String nom = request.getParameter("nom");
                String adressevillage = request.getParameter("adressevillage");
                String adressepermanente = request.getParameter("adressepermanente");
                String nationalite = request.getParameter("nationalite");
                String medaille = request.getParameter("medaille");

                Data da = new Data();
                da.editA(aid, prenom, nom, adressevillage, adressepermanente, nationalite, medaille);
                
                response.sendRedirect("/testWebApplication1/AllPostJsp");
            } //Employes
            else if (request.getParameter("eid") != null) {
                String eid = request.getParameter("eid");
                String prenom = request.getParameter("prenom");
                String nom = request.getParameter("nom");
                String adressevillage = request.getParameter("adressevillage");
                String adressepermanente = request.getParameter("adressepermanente");
                String numerotelephone = request.getParameter("numerotelephone");

                Data da = new Data();
                da.editEDC(eid, prenom, nom, adressevillage, adressepermanente, numerotelephone);
                
                response.sendRedirect("/testWebApplication1/AllPostJsp");
            } //Officiels
            else if (request.getParameter("oid") != null) {
                String oid = request.getParameter("oid");
                String prenom = request.getParameter("prenom");
                String nom = request.getParameter("nom");
                String adressevillage = request.getParameter("adressevillage");
                String type = request.getParameter("type");

                Data da = new Data();
                da.editO(oid, prenom, nom, adressevillage, type);
                
                response.sendRedirect("/testWebApplication1/AllPostJsp");
            }
        %>
    </body>
</html>
