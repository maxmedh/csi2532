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
                                </tr>
                            </c:forEach>
                        </thead>
                    </table>
                </div>
                <div class="col-sm-4" style="background-color:lavenderblush;"><h2>Service Transport</h2>
                    <table class="table">
                        <thead>
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
                                </tr>
                            </c:forEach>
                        </thead>
                    </table>
                </div>
                <div class="col-sm-4" style="background-color:lavender;"><h2>Service Médicaux</h2>
                    <table class="table">
                        <thead>
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
                                </tr>
                            </c:forEach>
                        </thead>
                    </table>
                </div>
                <div class="col-sm-4" style="background-color:lavender;"><h2>Disciplines</h2>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nom</th>
                                <th>Epreuves</th>                         
                            </tr>
                            <c:forEach items="${AllPostJspD}" var="p">
                                <tr>
                                    <td>${p.nomd}</td>
                                    <td>${p.epreuves}</td>       
                                </tr>
                            </c:forEach>
                        </thead>
                    </table>
                </div>
                <div class="col-sm-4" style="background-color:lavenderblush;"><h2>Officiels</h2>
                    <table class="table">
                        <thead>
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
                                </tr>
                            </c:forEach>
                        </thead>
                    </table>
                </div>  
                <div class="col-md-6" style="background-color:lavenderblush;"><h2>Employes du cojo</h2>
                    <table class="table">
                        <thead>
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
                                </tr>
                            </c:forEach>
                        </thead>
                    </table>
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