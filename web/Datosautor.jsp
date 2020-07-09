<%-- 
    Document   : Datosautor
    Created on : 25/06/2020, 12:40:24 AM
    Author     : Jack
--%>
<%@page import="java.sql.*" %>
<%@page import="bd.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos de los autores</title>
        <%!
            String consulta;
            Connection cn;
            PreparedStatement pst;
            ResultSet rs;
            int N=1;
        %>
    </head>
    <body style="
          background-color: #182c2e;
          background-image: linear-gradient(180deg, #182c2e 0%, #223e3e 19%, #182c2e 39%, #344b4c 60%, #284848 80%, #182c2e 100%);
          color: #FFFFFF; font-family: Agency FB;">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <table border="1" table style="background:#000000" align ="center" border="0" cellspacing = "0" cellpading = "0" width="400px" height="350px">
            <thead>
                <tr style="background:#a23534; color: #FFFFFF " align="center">
                    <th><font size=5>N°</font></th>
                    <th><font size=5>Nombre</font></th>
                    <th><font size=5>Fecha de nacimiento</font></th>   
                </tr>
            </thead>
            <tbody align="center">

                <%
                    try {
                        ConectaBd bd = new ConectaBd();
                        cn = bd.getConnection();
                        consulta = "select nombre, f_nacimiento from skereautor ORDER BY nombre ASC";
                        pst = cn.prepareStatement(consulta);
                        rs = pst.executeQuery();
                        while (rs.next()) {
                %>       
                <tr>
                    <td><font size=4><%out.println(N);%></font></td>
                    <td><font size=4><%out.println(rs.getString(1));%></font></td>
                    <td><font size=4><%out.println(rs.getString(2));%></font></td>

                </tr>

                <%
                     N++;   }
                            N=1;
                        rs.close();
                        pst.close();
                        cn.close();
                    } catch (Exception e) {
                        out.println("Error sql");
                    }

                %>



                </tr>

            </tbody>
        </table>
    <center><a style="background:#a23534; color: #FFFFFF " href="Menu.jsp"><font size=4>Atras</a></font></center>
</body>
</html>
