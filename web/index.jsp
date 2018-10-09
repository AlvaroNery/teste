<%-- 
    Document   : index
    Created on : 08/10/2018, 20:22:00
    Author     : nerysoftware
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conta Bancaria</title>
    </head>
    <body>
       <h2>Cadastra Conta</h2>

       <form action="NewServlet" method="post">
           <table>
               <tr>
                   <td>NUMERO DA CONTA:</td> 
                   <td><input type="text" name="NumeroConta">
               </tr>
               
                <tr>
                   <td>CPF DO TITULAR:</td> 
                   <td><input type="text" name="CPF_Titular">
               </tr>
               
               <tr>
                   <td colspan="2">
                       <input type="submit">  
               </tr>
               
           </table>
</form> 

    </body>
</html>
