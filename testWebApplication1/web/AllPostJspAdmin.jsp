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
                                    <a href="edit?address=${p.address}">Edit</a>
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
                                    <a href="edit?tid=${p.tid}">Edit</a>
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
                        </thead>
                    </table>
                </div>
                <div class="col-sm-4" style="background-color:lavenderblush;"><h2>Officiels</h2>
                    <table class="table">
                        <thead>
                        <button type="button" class="btn btn-info tn-lg" data-toggle="modal" data-target="#o"> Add </button>
                        <tr>
                            <th>Pid</th>
                            <th>Prenom</th>
                            <th>Nom</th>
                            <th>Adresse Village</th>
                            <th>Type</th>       
                        </tr>
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
                            <th>Pid</th>
                            <th>Prenom</th>
                            <th>Nom</th>
                            <th>Adresse Village</th>
                            <th>Adresse Permanente</th>
                            <th>Nationalite</th>
                            <th>Medaille</th>                                          
                        </tr>
                        </thead>
                    </table>
                </div>  
                <div class="col-md-6" style="background-color:lavenderblush;"><h2>Employes du cojo</h2>
                    <table class="table">
                        <thead>
                        <button type="button" class="btn btn-info tn-lg" data-toggle="modal" data-target="#edc"> Add </button>
                        <tr>
                            <th>Pid</th>
                            <th>Prenom</th>
                            <th>Nom</th>
                            <th>Adresse Village</th>
                            <th>Adresse Permanente</th>
                            <th>Numero Telephone</th>                      
                        </tr>
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
                    <form action="/testWebApplication1/JSP/ManageAddJsp.jsp" method="post" id="vo">
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
                    <form action="/testWebApplication1/JSP/ManageAddJsp.jsp" method="post" id="st">
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
                            <input type="text" name="itineraine" style="width:200px"><br>
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
                            <input type="text" name="nom" style="width:200px"><br>
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
                            <input type="text" name="nom" style="width:200px"><br>
                            Epreuves:<br>
                            <input type="text" name="epreuves:" style="width:200px"><br>                            
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
                            Pid:<br>
                            <input type="text" name="pid" style="width:200px"><br>
                            Prenom:<br>
                            <input type="text" name="prenom" style="width:200px"><br>
                            Nom:<br>
                            <input type="text" name="nom" style="width:200px"><br>
                            Adresse Village:<br>
                            <input type="text" name="adressevillage" style="width:200px"><br>
                            Adresse Permanente:<br>
                            <input type="text" name="adressepermenante" style="width:200px"><br>    
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
                            Pid:<br>
                            <input type="text" name="pid" style="width:200px"><br>
                            Prenom:<br>
                            <input type="text" name="prenom" style="width:200px"><br>
                            Nom:<br>
                            <input type="text" name="nom" style="width:200px"><br>
                            Adresse Village:<br>
                            <input type="text" name="adressevillage" style="width:200px"><br>
                            Adresse Permanente:<br>
                            <input type="text" name="adressepermenante" style="width:200px"><br>                              
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
                            Pid:<br>
                            <input type="text" name="pid" style="width:200px"><br>
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
    </body>
</html>