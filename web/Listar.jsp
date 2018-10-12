<%-- 
    Document   : Listar
    Created on : 18/09/2018, 21:08:33
    Author     : anderson
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c =  DriverManager.getConnection("jdbc:mysql://localhost/contabancaria","root","");
            PreparedStatement  p =  c.prepareStatement("select * from operacao");
            ResultSet r =  p.executeQuery() ; %>
            <table border="1" > 
                <tr> 
                    <td> ID  </td>
                    <td> DATA DA OPERACÃO  </td>
                    <td> VALOR DA OPERAÇÃO  </td>
                    <td> CREDITO  </td>
                    <td> DEBITO </td></tr>
           <% while (r.next()){ %>
            <tr> 
                <td><% out.print("<a href=Operacao?id=" + r.getString("id") + ">"  + r.getString("id")  + "</a>" ); %> </td>
                <td><%=r.getString("DataOperacao")%>  </td>
               <td> <%=r.getString("valorOperacao")%> </td>
               <td> <%=r.getString("credito")%> </td>
                <td> <%=r.getString("debito")%> </td>
            </tr>
            <%}
        } catch (Exception ex) {
          response.getWriter().print("Erro: " + ex.getMessage());
        }
        %>
            </table>
    </body>
</html>
