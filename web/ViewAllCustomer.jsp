<%-- 
    Document   : ViewAllCustomer
    Created on : 19 Jan, 2021, 8:31:56 PM
    Author     : vaibh
--%>

<%@page import="Entity.CustomerEntity"%>
<%@page import="java.util.List"%>
<%@page import="DAO.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Customer</title>
            
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<!--         CSS only -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
   
    </head>
    <body>
        <div class="container  text-center mt-5">
            <div class="row">
                <div class="col-lg-12  col-sm-12">
                    <h2 class="h2 text-dark">View All Customer </h2>
                </div>
                
           </div>
            
            
            
            <%
                List<CustomerEntity> clist  = CustomerDAO.getAllCustomer();
                for(CustomerEntity c:clist)
                {
            %>
              <div class="row mt-2 p-2">
                <div class="col-lg-12  col-sm-12">
                        <div class="card">
                            <h5 class="card-header bg-white text-left ">Customer No <%= c.getCid() %> </h5>
                            <div class="card-body">
                                <div class="row">
                                    
                                    <div class="col-sm-6 text-left ">
                                        <span class="text-dark">Name : </span>
                                        <span class="card-titleName text-muted"><u><i class="fas fa-user-alt"></i><%=  c.getCFNAME()+" "+c.getCLNAME() %></u></span>
                                        
                                      </div>  
                                       <div class="col-sm-6 text-right">
                                         <span class="text-dark">Email : </span>
                                         <span class="card-titleName text-muted"><i class="fas fa-envelope-square 2x bg-white"></i><%= c.getEMAIL()%></span>
                                      </div>  
                                    </div>
                                </div>
                                         <p class="card-text text-left pl-4 "><span class="text-dark text-uppercase " style="font-weight: bold;">Description : </span><%= c.getDESCRIPTION()%></p>
                              <a href="ViewFullDetail.jsp?customerid=<%=  c.getCid() %>" class="btn btn-primary">Tap to View Full detail</a>
                            </div>
                        </div>
                </div>
                
            
            <% 
                    }
                %>
            
            
            
            
            
            
            
            
            
           </div>
            
        </div>
    </body>
      
 <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</html>
