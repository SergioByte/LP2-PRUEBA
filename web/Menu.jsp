<%-- 
    Document   : Menu
    Created on : 24/06/2020, 11:47:26 PM
    Author     : Jack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu de opciones</title>
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
        <table style="background:#000000" align ="center" border="0" cellspacing = "0" cellpading = "0" width="400px" height="400px">
            <thead>
                <tr>
                    <td td colspan="2" style="background:#a23534"></td>
                </tr>
                <tr style="background:#a23534; color: #FFFFFF ">
                    <th><font size=6>Menu</font></th>
                </tr>
                <tr>
                    <td></td>
                </tr>
            </thead>
            <tbody align="left">
                <tr>
                    <td align="center"></td>
                </tr>
                <tr>
                    <td  style="background:#292222"><a  style="color: #FFFFFF "  href="Datosautor.jsp"><font size=4>&nbsp;&nbsp;Datos sobre los autores</font></a></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td style="background:#292222"><a style="color: #FFFFFF" href="Datoseditorial.jsp"><font size=4>&nbsp;&nbsp;Datos sobre las editoriales</font></a></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td style="background:#292222"><a style="color: #FFFFFF" href="Datospais.jsp"><font size=4>&nbsp;&nbsp;Datos de los paises</font></a></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td style="background:#292222"><a style="color: #FFFFFF" href="Datoslibro.jsp"><font size=4>&nbsp;&nbsp;Datos de los libros</font></a></td>
                </tr>
                <tr>
                    <td align="center"></td>
                </tr>
                <tr align="right">
                    <td colspan="2"><a style="background:#a23534; color: #FFFFFF " href="Login.jsp"><font size=4>Salir</font></a></td>
                </tr>

            </tbody>
        </table>
    </body>
</html>
