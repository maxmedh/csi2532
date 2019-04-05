<%-- 
    Document   : AllPostJsp
    Created on : 30-Mar-2019, 11:20:53 PM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

    <head>
        <title>Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>

    <body  style="background-color: lemonchiffon;">
        <div class="container-fluid">
            <button onclick="document.getElementById('id01').style.display = 'block'" style="width:auto;">Login</button>
            <h1 align="center">Home Page</h1>           
            <div class="row form-group top-buffer">
                <div class="col-sm-4" style="background-color:lavender;"><h2>Village Olympique</h2>
                    <table class="table">
                        <thead> 
                        <button type="button" class="btn btn-info tn-lg" data-toggle="modal" data-target="#vo"> Add </button>
                        <tr>
                            <th>Address</th>
                            <th>Capacite</th>
                            <th>Telephone</th>
                        </tr>
                        <c:forEach items="${AllPostJspVO}" var="p">
                            <tr>
                                <td>${p.address}</td>
                                <td>${p.capacite}</td>
                                <td>${p.telephone}</td>
                                <td>
                                    <a href="" data-toggle="modal" data-target="#evo">Edit</a>
                                    <a href="delete?address=${p.address}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </thead>
                    </table>
                </div>
                <div class="col-sm-4" style="background-color:lavenderblush;"><h2>Service Transport</h2>
                    <table class="table">
                        <thead>
                        <button type="button" class="btn btn-info tn-lg" data-toggle="modal" data-target="#st"> Add </button>
                        <tr>
                            <th>Tid</th>
                            <th>Frequence</th>
                            <th>Ptdepart</th>
                            <th>Ptarrive</th>
                            <th>itineraire</th>
                        </tr>
                        <c:forEach items="${AllPostJspST}" var="p">
                            <tr>
                                <td>${p.tid}</td>
                                <td>${p.frequence}</td>
                                <td>${p.ptdepart}</td>
                                <td>${p.ptarrive}</td>
                                <td>${p.itineraire}</td>
                                <td>
                                    <a href="" data-toggle="modal" data-target="#est">Edit</a>
                                    <a href="delete?tid=${p.tid}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </thead>
                    </table>
                </div>
                <div class="col-sm-4" style="background-color:lavender;"><h2>Service Médicaux</h2>
                    <table class="table">
                        <thead>
                        <button type="button" class="btn btn-info tn-lg" data-toggle="modal" data-target="#sm"> Add </button>
                        <tr>
                            <th>Nom</th>
                            <th>Description</th>
                            <th>Numero Telephone</th>
                            <th>Adresse</th>
                        </tr>
                        <c:forEach items="${AllPostJspSM}" var="p">
                            <tr>
                                <td>${p.nomsm}</td>
                                <td>${p.description}</td>
                                <td>${p.numerotelephone}</td>
                                <td>${p.adresse}</td>                              
                                <td>
                                    <a href="" data-toggle="modal" data-target="#esm">Edit</a>
                                    <a href="delete?nomsm=${p.nomsm}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </thead>
                    </table>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-sm-4" style="background-color:lavenderblush;"><h2>Installation</h2>
                    <table class="table">
                        <thead>
                        <button type="button" class="btn btn-info tn-lg" data-toggle="modal" data-target="#i"> Add </button>
                        <tr>
                            <th>Iid</th>
                            <th>Nom</th>
                            <th>Capacite</th>
                            <th>Addresse</th>
                            <th>Usage</th>
                            <th>Description</th>
                        </tr>
                        <c:forEach items="${AllPostJspI}" var="p">
                            <tr>
                                <td>${p.iid}</td>
                                <td>${p.nom}</td>
                                <td>${p.capacite}</td>
                                <td>${p.addresse}</td>                 
                                <td>${p.usage}</td>                              
                                <td>${p.description}</td> 
                                <td>
                                    <a href="" data-toggle="modal" data-target="#ei">Edit</a>
                                    <a href="delete?iid=${p.iid}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </thead>
                    </table>
                </div>
                <div class="col-sm-4" style="background-color:lavender;"><h2>Disciplines</h2>
                    <table class="table">
                        <thead>
                        <button type="button" class="btn btn-info tn-lg" data-toggle="modal" data-target="#d"> Add </button>
                        <tr>
                            <th>Nom</th>
                            <th>Epreuves</th>                         
                        </tr>
                        <c:forEach items="${AllPostJspD}" var="p">
                            <tr>
                                <td>${p.nomd}</td>
                                <td>${p.epreuves}</td>       
                                <td>
                                    <a href="" data-toggle="modal" data-target="#ed">Edit</a>
                                    <a href="delete?nomd=${p.nomd}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </thead>
                    </table>
                </div>
                <div class="col-sm-4" style="background-color:lavenderblush;"><h2>Officiels</h2>
                    <table class="table">
                        <thead>
                        <button type="button" class="btn btn-info tn-lg" data-toggle="modal" data-target="#o"> Add </button>
                        <tr>
                            <th>Id</th>
                            <th>Prenom</th>
                            <th>Nom</th>
                            <th>Adresse Village</th>
                            <th>Type</th>       
                        </tr>
                        <c:forEach items="${AllPostJspO}" var="p">
                            <tr>
                                <td>${p.oid}</td>
                                <td>${p.prenom}</td>
                                <td>${p.nom}</td>
                                <td>${p.adressevillage}</td>
                                <td>${p.type}</td>
                                <td>
                                    <a href="" data-toggle="modal" data-target="#eo">Edit</a>
                                    <a href="delete?oid=${p.oid}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </thead>
                    </table>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-6" style="background-color:lavender;"><h2>Athletes</h2>
                    <table class="table">
                        <thead>
                        <button type="button" class="btn btn-info tn-lg" data-toggle="modal" data-target="#a"> Add </button>
                        <tr>
                            <th>Id</th>
                            <th>Prenom</th>
                            <th>Nom</th>
                            <th>Adresse Village</th>
                            <th>Adresse Permanente</th>
                            <th>Nationalite</th>
                            <th>Medaille</th>                                          
                        </tr>
                        <c:forEach items="${AllPostJspA}" var="p">
                            <tr>
                                <td>${p.aid}</td>
                                <td>${p.prenom}</td>
                                <td>${p.nom}</td>
                                <td>${p.adressevillage}</td>
                                <td>${p.adressepermanente}</td>
                                <td>${p.nationalite}</td>
                                <td>${p.medaille}</td>
                                <td>
                                    <a href="" data-toggle="modal" data-target="#ea">Edit</a>
                                    <a href="delete?aid=${p.aid}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </thead>
                    </table>
                </div>  
                <div class="col-md-6" style="background-color:lavenderblush;"><h2>Employes du cojo</h2>
                    <table class="table">
                        <thead>
                        <button type="button" class="btn btn-info tn-lg" data-toggle="modal" data-target="#edc"> Add </button>
                        <tr>
                            <th>Id</th>
                            <th>Prenom</th>
                            <th>Nom</th>
                            <th>Adresse Village</th>
                            <th>Adresse Permanente</th>
                            <th>Numero Telephone</th>                      
                        </tr>
                        <c:forEach items="${AllPostJspEDC}" var="p">
                            <tr>
                                <td>${p.eid}</td>
                                <td>${p.prenom}</td>
                                <td>${p.nom}</td>
                                <td>${p.adressevillage}</td>
                                <td>${p.adressepermanente}</td>
                                <td>${p.numerotelephone}</td>
                                <td>
                                    <a href="" data-toggle="modal" data-target="#eedc">Edit</a>
                                    <a href="delete?eid=${p.eid}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </thead>
                    </table>
                </div>          
            </div>
        </div>

        <div id="vo" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Add</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageAddJsp.jsp" method="post">
                        <div class="container">
                            Address:<br>
                            <input type="text" name="address" style="width:200px"><br>
                            Capacite:<br>
                            <input type="text" name="capacite" style="width:200px"><br>
                            Telephone:<br>
                            <input type="text" name="telephone" style="width:200px"><br>
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="st" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Add</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageAddJsp.jsp" method="post">
                        <div class="container">
                            Tid:<br>
                            <input type="text" name="tid" style="width:200px"><br>
                            Frequence:<br>
                            <input type="text" name="frequence" style="width:200px"><br>
                            Ptdepart:<br>
                            <input type="text" name="ptdepart" style="width:200px"><br>
                            Ptarrive:<br>
                            <input type="text" name="ptarrive" style="width:200px"><br>
                            Itineraire:<br>
                            <input type="text" name="itineraire" style="width:200px"><br>
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="sm" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Add</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageAddJsp.jsp" method="post">
                        <div class="container">
                            Nom:<br>
                            <input type="text" name="nomsm" style="width:200px"><br>
                            Description:<br>
                            <input type="text" name="description" style="width:200px"><br>
                            Numero Telephone:<br>
                            <input type="text" name="numerotelephone" style="width:200px"><br>
                            Adresse:<br>
                            <input type="text" name="adresse" style="width:200px"><br>                        
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="i" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Add</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageAddJsp.jsp" method="post">
                        <div class="container">
                            Iid:<br>
                            <input type="text" name="iid" style="width:200px"><br>                           
                            Nom:<br>
                            <input type="text" name="nom" style="width:200px"><br>
                            Capacite:<br>
                            <input type="text" name="capacite" style="width:200px"><br>  
                            Addresse:<br>
                            <input type="text" name="addresse" style="width:200px"><br> 
                            Usage:<br>
                            <input type="text" name="usage" style="width:200px"><br>
                            Description:<br>
                            <input type="text" name="description" style="width:200px"><br>
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="d" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Add</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageAddJsp.jsp" method="post">
                        <div class="container">
                            Nom:<br>
                            <input type="text" name="nomd" style="width:200px"><br>
                            Epreuves:<br>
                            <input type="text" name="epreuves" style="width:200px"><br>                            
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="a" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Add</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageAddJsp.jsp" method="post">
                        <div class="container">
                            Id:<br>
                            <input type="text" name="aid" style="width:200px"><br>
                            Prenom:<br>
                            <input type="text" name="prenom" style="width:200px"><br>
                            Nom:<br>
                            <input type="text" name="nom" style="width:200px"><br>
                            Adresse Village:<br>
                            <input type="text" name="adressevillage" style="width:200px"><br>
                            Adresse Permanente:<br>
                            <input type="text" name="adressepermanente" style="width:200px"><br>    
                            Nationalite:<br>
                            <input type="text" name="nationalite" style="width:200px"><br>
                            Medaille:<br>
                            <input type="text" name="medaille" style="width:200px"><br>
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="edc" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Add</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageAddJsp.jsp" method="post">
                        <div class="container">
                            Id:<br>
                            <input type="text" name="eid" style="width:200px"><br>
                            Prenom:<br>
                            <input type="text" name="prenom" style="width:200px"><br>
                            Nom:<br>
                            <input type="text" name="nom" style="width:200px"><br>
                            Adresse Village:<br>
                            <input type="text" name="adressevillage" style="width:200px"><br>
                            Adresse Permanente:<br>
                            <input type="text" name="adressepermanente" style="width:200px"><br>
                            Numero Telephone:<br>
                            <input type="text" name="numerotelephone" style="width:200px"><br>  
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="o" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Add</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageAddJsp.jsp" method="post">
                        <div class="container">
                            Id:<br>
                            <input type="text" name="oid" style="width:200px"><br>
                            Prenom:<br>
                            <input type="text" name="prenom" style="width:200px"><br>
                            Nom:<br>
                            <input type="text" name="nom" style="width:200px"><br>
                            Adresse Village:<br>
                            <input type="text" name="adressevillage" style="width:200px"><br>
                            Type:<br>
                            <input type="text" name="type" style="width:200px"><br>                              
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <div id="evo" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Edit</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageEditJsp.jsp" method="post">
                        <div class="container">
                            Address:<br>
                            <input type="text" name="address" style="width:200px"><br>
                            Capacite:<br>
                            <input type="text" name="capacite" style="width:200px"><br>
                            Telephone:<br>
                            <input type="text" name="telephone" style="width:200px"><br>
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="est" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Edit</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageEditJsp.jsp" method="post">
                        <div class="container">
                            Tid:<br>
                            <input type="text" name="tid" style="width:200px"><br>
                            Frequence:<br>
                            <input type="text" name="frequence" style="width:200px"><br>
                            Ptdepart:<br>
                            <input type="text" name="ptdepart" style="width:200px"><br>
                            Ptarrive:<br>
                            <input type="text" name="ptarrive" style="width:200px"><br>
                            Itineraire:<br>
                            <input type="text" name="itineraire" style="width:200px"><br>
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="esm" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Edit</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageEditJsp.jsp" method="post">
                        <div class="container">
                            Nom:<br>
                            <input type="text" name="nomsm" style="width:200px"><br>
                            Description:<br>
                            <input type="text" name="description" style="width:200px"><br>
                            Numero Telephone:<br>
                            <input type="text" name="numerotelephone" style="width:200px"><br>
                            Adresse:<br>
                            <input type="text" name="adresse" style="width:200px"><br>                        
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="ei" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Edit</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageEditJsp.jsp" method="post">
                        <div class="container">
                            Iid:<br>
                            <input type="text" name="iid" style="width:200px"><br>                           
                            Nom:<br>
                            <input type="text" name="nom" style="width:200px"><br>
                            Capacite:<br>
                            <input type="text" name="capacite" style="width:200px"><br>  
                            Addresse:<br>
                            <input type="text" name="addresse" style="width:200px"><br> 
                            Usage:<br>
                            <input type="text" name="usage" style="width:200px"><br>
                            Description:<br>
                            <input type="text" name="description" style="width:200px"><br>
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="ed" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Edit</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageEditJsp.jsp" method="post">
                        <div class="container">
                            Nom:<br>
                            <input type="text" name="nomd" style="width:200px"><br>
                            Epreuves:<br>
                            <input type="text" name="epreuves" style="width:200px"><br>                            
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="ea" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Edit</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageEditJsp.jsp" method="post">
                        <div class="container">
                            Id:<br>
                            <input type="text" name="aid" style="width:200px"><br>
                            Prenom:<br>
                            <input type="text" name="prenom" style="width:200px"><br>
                            Nom:<br>
                            <input type="text" name="nom" style="width:200px"><br>
                            Adresse Village:<br>
                            <input type="text" name="adressevillage" style="width:200px"><br>
                            Adresse Permanente:<br>
                            <input type="text" name="adressepermanente" style="width:200px"><br>    
                            Nationalite:<br>
                            <input type="text" name="nationalite" style="width:200px"><br>
                            Medaille:<br>
                            <input type="text" name="medaille" style="width:200px"><br>
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="eedc" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Edit</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageEditJsp.jsp" method="post">
                        <div class="container">
                            Id:<br>
                            <input type="text" name="eid" style="width:200px"><br>
                            Prenom:<br>
                            <input type="text" name="prenom" style="width:200px"><br>
                            Nom:<br>
                            <input type="text" name="nom" style="width:200px"><br>
                            Adresse Village:<br>
                            <input type="text" name="adressevillage" style="width:200px"><br>
                            Adresse Permanente:<br>
                            <input type="text" name="adressepermanente" style="width:200px"><br>
                            Numero Telephone:<br>
                            <input type="text" name="numerotelephone" style="width:200px"><br>  
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="eo" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" align="center">Edit</h4>
                    </div>
                    <form action="/testWebApplication1/JSP/ManageEditJsp.jsp" method="post">
                        <div class="container">
                            Id:<br>
                            <input type="text" name="oid" style="width:200px"><br>
                            Prenom:<br>
                            <input type="text" name="prenom" style="width:200px"><br>
                            Nom:<br>
                            <input type="text" name="nom" style="width:200px"><br>
                            Adresse Village:<br>
                            <input type="text" name="adressevillage" style="width:200px"><br>
                            Type:<br>
                            <input type="text" name="type" style="width:200px"><br>                              
                        </div>                   
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" value="Submit" class="btn btn-default">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="id01" class="modal">

            <form class="modal-content animate" action="JSP/ManageLogin.jsp">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>

                </div>

                <div class="container">
                    <label for="uname"><b>Username</b></label>
                    <input type="text" placeholder="Enter Username" name="uname" required>

                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="psw" required>

                    <button type="submit">Login</button>
                    <label>
                        <input type="checkbox" checked="checked" name="remember"> Remember me
                    </label>
                </div>

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                </div>
            </form>
        </div>

        <script>
            // Get the modal
            var modal = document.getElementById('id01');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
            }
        </script>
    </body>
</html>