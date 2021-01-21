
<%@page import="Entity.CustomerEntity"%>
<%@page import="java.util.List"%>
<%@page import="DAO.CustomerDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Money</title>
         
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
         
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style>
    
    body{
        background: whitesmoke;
    }
</style> 

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   </head>
   <body>
       <div class="container mt-5  ">
         
           <div class="text-center m-3">
               
               <h3 class="h3">Transfer Money</h3>
           </div>
           
           <table class="table">
               <tbody>
                   <tr class="m-3">
                       <th>   <label for="from" style="font-weight: bold">From : </label></td>
                            
                       <td>  <select id="from"  class="form-control" >
                               <option value="-1" >Choose...</option>
                               <% 
                                   List<CustomerEntity> customerlist=CustomerDAO.getAllCustomercidname();
                               for(CustomerEntity c :customerlist){
                               %>
                               <option value="<%= c.getCid() %>"><%= c.getCid() +" "+c.getCFNAME() %></option>
                               
                           <%
                               }
                               %>
                               </select>
                         </td>
                    
                 </tr> 
                   
                  <tr class="m-3">
                            <th>            <label for="to" style="font-weight: bold">To : </label></th>
                            <td>       <select id="to"  class="form-control">
                                    <option  value="-1">Choose...</option>
                                    
                                      <%
                                      
                                      for(CustomerEntity c :customerlist){
                               %>
                               <option value="<%= c.getCid() %>"><%= c.getCid() +" "+c.getCFNAME() %></option>
                               
                           <%
                               }
                               %>
                               </select>
                            </td>
                   </tr>
                
                <tr class="m-3">
                    
                    <th>    <label for="amount" style="font-weight: bold">Amount : </label></th>
                    <td>  <input type="number" id="amount" max="1000000" min="1" required placeholder="ex:40"></td>
                   </div>
               
                </tr>
            <tr class="text-center mt-4 ">
                    <td colspan="2" >
                        <button type="button" onclick="completeTransection();" class="btn btn-outline-dark">Transfer</button>
                       
                    </td>
                </tr>
                </tbody>
           </table>
           </div>
        
    </body>
      <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script>

   
    function completeTransection()
{
  
       let from=   $('#from').find('option:selected').val();
      let to=  $('#to').find('option:selected').val();
    let amount=$('#amount').val();
        if(from === to  )
        {
            swal({
                title: "Exception Occure",
                 text: "sender and reciever are not be same",
                 icon: "warning",
                 buttons: true,
                dangerMode: true,
    })
        }else if( amount <1)
        {
            swal({
                title: "Exception Occure",
                 text: "amount can not be less not 1",
                 icon: "warning",
                buttons: true,
                dangerMode: true,
        })
        } 
        else if( from == -1 || to == -1)
    {
         swal({
                title: "Exception Occure",
                 text: "Choosen can not b selected",
                 icon: "warning",
                 buttons: true,
                dangerMode: true,
    })
    }    else
        {
             var dataString ={"amount":amount,"from":from,"to":to};
            $.ajax({
               url: "TransferServlet",
              data: dataString ,
              success: function (data, textStatus, jqXHR) {
                    // console.log(data);   
                    if(data)
                               swal({
                                    title: "Good job!",
                                    text: "You clicked the button!",
                                    icon: "success",
                                    button: "Aww yiss!",
                                  });
                              window.location = "ViewAllCustomer.jsp";
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log("error")
                        swal({
                            title: "Exception in database?",
                            text: "some error occur !",
                            icon: "warning",
                            buttons: true,
                            dangerMode: true,
                          })
                    }
           })    
            
        }
    



}
   
</script>

</html>
