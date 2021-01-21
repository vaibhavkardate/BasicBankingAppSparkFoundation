<%-- 
    Document   : ViewFullDetail
    Created on : 19 Jan, 2021, 9:15:25 PM
    Author     : vaibh
--%>

<%@page import="Entity.CustomerEntity"%>
<%@page import="DAO.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Single Customer Full Detail</title>
       
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
         
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style>
    
 
    
    
</style>
        
    </head>
    <body >
        <h3 class="text-center text-dark mt-5">View Single Customer Full Detail</h3>
        <%
           int a= Integer.parseInt(request.getParameter("customerid"));
          CustomerEntity entity= CustomerDAO.getCustomerDetailById(a);
        %>
        
        <div class="container mt-5">
            <table class="table table-striped table-dark ">
                <tbody>
                    <tr>
                           <th >Customer No </th>
                           <td><%= entity.getCid() %></td>
                    </tr>
                     <tr>
                           <th >First Name </th>
                           <td><%= entity.getCFNAME()%></td>
                    </tr>
                     <tr>
                           <th >Last Name </th>
                           <td><%= entity.getCLNAME()%></td>
                    </tr>
                     <tr>
                           <th >Address  </th>
                           <td><%= entity.getADDRESH()%></td>
                    </tr>
                     <tr>
                           <th >Gender </th>
                           <td><%= entity.getGENDER()%></td>
                    </tr>
                     <tr>
                           <th >Status </th>
                           <td><%= entity.getSTATUS()%></td>
                    </tr>
                     <tr>
                           <th>Email </th>
                           <td><%= entity.getEMAIL()%></td>
                    </tr>
                     <tr>
                           <th >Balance </th>
                           <td><%= entity.getBALANCE()%></td>
                    </tr>
                     <tr>
                           <th >Balance </th>
                           <td><%= entity.getDESCRIPTION()%></td>
                    </tr>
                    
                </tbody>
                
            </table>
                    <div class="row text-center mt-4">
                        <div class="col-6">
                            <a class="btn btn-outline-secondary" href="ViewAllCustomer.jsp">Back...</a> 
                        </div>
                         <div class="col-6">
                             <a class="btn btn-outline-secondary" href="Transfer.jsp">Transfer Money</a> 
                        </div>
                        
                    </div>        
        </div>
        
    </body>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</html>
