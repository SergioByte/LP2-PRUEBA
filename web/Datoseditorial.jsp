<%-- 
    Document   : Datoseditorial
    Created on : 09/07/2020, 12:18:31 PM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="java.sql.*" %>
<%@page import="bd.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%!
        
            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
        %>
    </head>
    <body>
        <table border="1" cellspacing="1" cellpadding="1" align = "center">
            <thead>
                <tr>
                    <th>ID editorial</th>
                    <th>Nombre</th>
                    <th>Estado</th>
                    
                </tr>
            </thead>
            <tbody>

                <%
                    try {
                        ConectaBd bd = new ConectaBd();
                        cn = bd.getConnection();
                        consulta = "select * from skereeditorial ORDER BY nombre ASC";
                        pst = cn.prepareStatement(consulta);
                        rs = pst.executeQuery();
                        while (rs.next()) {
                %>       
            <tr>
            <td><%out.println(rs.getString(1));%></td>
            <td><%out.println(rs.getString(2));%></td>
            <td><%out.println(rs.getString(3));%></td>
            
            </tr>

            <%
                    }
                    
                    rs.close();
                    pst.close();
                    cn.close();
                } catch (Exception e) {
                    out.println("Error sql");
                }

            %>

            
    
            </tr>
            <tr>

            </tr>
        </tbody>
    </table>
<center><a href="Menu.jsp">Atras</a></center>
    </body>
</html>

