<%@ page import="alkarized.lab2.entities.Coordinate" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="alkarized.lab2.entities.Converter" %>
<%--
  Created by IntelliJ IDEA.
  User: golan
  Date: 18.11.2021
  Time: 3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<% ArrayList<Coordinate> listSession = (ArrayList<Coordinate>) request.getSession().getAttribute("sessionList"); %>
<%String jsonString = Converter.toJson(listSession);%>
<html>
<head>
    <link rel="stylesheet" href="css/table.css" type="text/css">
    <title>Table</title>
</head>
<body>
    <table>
        <tr>
            <td>Координата X</td>
            <td>Координата Y</td>
            <td>Радиус R</td>
            <td>Факт попадания</td>
        </tr>
        <%
            if (listSession != null){
                for (Coordinate coordinate: listSession){ %>
                    <tr>
                        <td><%= coordinate.getX()%></td>
                        <td><%= coordinate.getY()%></td>
                        <td><%= coordinate.getR()%></td>
                        <td class = <%= coordinate.getIsHit()%>> <%= coordinate.getIsHit()%> </td>
                    </tr>
            <%}}%>
    </table>
    <a href="index.jsp">TO THE MAIN PAGE!!!!!!</a>
    <script>
        let json = '<%=jsonString%>'
    </script>
    <script type="text/javascript" src="js/table.js"></script>
</body>
</html>
