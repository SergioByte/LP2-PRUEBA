

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
                    <th>ID libro</th>
                    <th>Id Autor</th>
                    <th>Titulo</th>
                    <th>cantidad</th>
                    <th>año</th>
                    
                    <th>ID Editorial</th>
                    <th>ID pais</th>
                    <th>precio</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
            <h1><center>Ordenado por nombre del libro:</center></h1>
                <%
                    try {
                        ConectaBd bd = new ConectaBd();
                        cn = bd.getConnection();
                        consulta = "select idlibro, idautor, titulo, cantidad, año, ideditorial, idpais, precio, estado from skerelibro ORDER BY titulo ASC";
                        pst = cn.prepareStatement(consulta);
                        rs = pst.executeQuery();
                        while (rs.next()) {
                %>       
            
             <tr>
            <td><%out.println(rs.getString(1));%></td>
            <td><%out.println(rs.getString(2));%></td>
            <td><%out.println(rs.getString(3));%></td>
            <td><%out.println(rs.getString(4));%></td>
            <td><%out.println(rs.getString(5));%></td>
            <td><%out.println(rs.getString(6));%></td>
            <td><%out.println(rs.getString(7));%></td>
            <td><%out.println(rs.getString(8));%></td>
            <td><%out.println(rs.getString(9));%></td>
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

        </tbody>
    </table>
<table border="1" cellspacing="1" cellpadding="1" align = "center">
            <thead>
                <tr>
                    <th>ID libro</th>
                    <th>Id Autor</th>
                    <th>Titulo</th>
                    <th>cantidad</th>
                    <th>año</th>
                    
                    <th>ID Editorial</th>
                    <th>ID pais</th>
                    <th>precio</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
            <h1><center>Ordenado por nombre del pais:</center></h1>
                <%
                    try {
                        ConectaBd bd = new ConectaBd();
                        cn = bd.getConnection();
                        consulta = "select idlibro, idautor, titulo, cantidad, año, ideditorial, idpais, precio, estado from skerelibro ORDER BY idpais ASC";
                        pst = cn.prepareStatement(consulta);
                        rs = pst.executeQuery();
                        while (rs.next()) {
                %>       
            
             <tr>
            <td><%out.println(rs.getString(1));%></td>
            <td><%out.println(rs.getString(2));%></td>
            <td><%out.println(rs.getString(3));%></td>
            <td><%out.println(rs.getString(4));%></td>
            <td><%out.println(rs.getString(5));%></td>
            <td><%out.println(rs.getString(6));%></td>
            <td><%out.println(rs.getString(7));%></td>
            <td><%out.println(rs.getString(8));%></td>
            <td><%out.println(rs.getString(9));%></td>
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

        </tbody>
    </table>
<table border="1" cellspacing="1" cellpadding="1" align = "center">
            <thead>
                <tr>
                    <th>ID libro</th>
                    <th>Id Autor</th>
                    <th>Titulo</th>
                    <th>cantidad</th>
                    <th>año</th>
                    
                    <th>ID Editorial</th>
                    <th>ID pais</th>
                    <th>precio</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
            <h1><center>Ordenado por nombre del editorial:</center></h1>
                <%
                    try {
                        ConectaBd bd = new ConectaBd();
                        cn = bd.getConnection();
                        consulta = "select idlibro, idautor, titulo, cantidad, año, ideditorial, idpais, precio, estado from skerelibro ORDER BY ideditorial ASC";
                        pst = cn.prepareStatement(consulta);
                        rs = pst.executeQuery();
                        while (rs.next()) {
                %>       
            
             <tr>
            <td><%out.println(rs.getString(1));%></td>
            <td><%out.println(rs.getString(2));%></td>
            <td><%out.println(rs.getString(3));%></td>
            <td><%out.println(rs.getString(4));%></td>
            <td><%out.println(rs.getString(5));%></td>
            <td><%out.println(rs.getString(6));%></td>
            <td><%out.println(rs.getString(7));%></td>
            <td><%out.println(rs.getString(8));%></td>
            <td><%out.println(rs.getString(9));%></td>
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

        </tbody>
    </table>
<center><a href="Menu.jsp">Atras</a></center>
    </body>
</html>