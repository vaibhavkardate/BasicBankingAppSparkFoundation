<%-- 
    Document   : Transection
    Created on : 20 Jan, 2021, 2:25:06 PM
    Author     : vaibh
--%>

<%@page import="java.util.List"%>
<%@page import="DAO.TransectionDAO"%>
<%@page import="Entity.Transectionentity"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transection Detail</title>
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
         
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">
            <table class="table" >
                <thead>
                    <tr>
                        <th>
                            Trans No 
                        </th>
                        <th>
                            Trans from 
                        </th>
                        <th>
                            Trans To 
                        </th>
                         <th>
                            Amount
                        </th>
                         <th>
                            Date
                        </th>

                    </tr>
                    
                </thead>
                <tbody>
                    <% List<Transectionentity> tentity=TransectionDAO.getAllTransection(); 
                    for(Transectionentity t:tentity){
           
                    %>
                    <tr>
                         <td>
                                 <%= t.getTid() %>
                        </td>
                        <td>
                             <%= t.getFrom()%>
                        </td>
                        <td>
                                     <%= t.getTo()%>
                        </td>
                         <td>
                           <%= t.getAmount()%>
                        </td>
                         <td>
                            <%= t.getD()%>
                        </td>
                        
                    </tr>
                    <%
                        }
                        %>
                    
                </tbody>
            </table>
            
        </div>
  
        
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
 
        
    </body>
</html>
