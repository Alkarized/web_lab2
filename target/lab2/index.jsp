<%@ page import="alkarized.lab2.entities.Coordinate" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="css/main_page.css" type="text/css">
        <link rel="stylesheet" href="css/table.css" type="text/css">
        <title>JSP - Hello World</title>

	</head>
	<body>
        <h1>Лабораторная работа №2</h1>
        <header>
            <div>ФИО: Оскилко Михаил Васильевич</div>
            <div>Группа: P3212</div>
            <div>Вараинта: 49012</div>
        </header>
        <canvas id="graph"></canvas>
        <form id="form" name="form" method="POST" action="controller">
            <input name="text" id="x_input" type="text">
            <div>
                <span>
                    <input name="checkboxes" type="checkbox" id="checkbox_variable_1" value="-3">
                    <label>-3</label>
                    <input name="checkboxes" type="checkbox" value="-2">
                    <label>-2</label>
                    <input name="checkboxes" type="checkbox" value="-1">
                    <label>-1</label>
                </span>
                <br>
                <span>
                    <input name="checkboxes" type="checkbox" value="0">
                    <text class="invisible_text">-</text><label>0</label>
                    <input name="checkboxes" type="checkbox" value="1">
                    <text class="invisible_text">-</text><label>1</label>
                    <input name="checkboxes" type="checkbox" value="2">
                    <text class="invisible_text">-</text><label>2</label>
                </span>
                <br>
                <span>
                    <input name="checkboxes" type="checkbox" value="3">
                    <text class="invisible_text">-</text><label>3</label>
                    <input name="checkboxes" type="checkbox" value="4">
                    <text class="invisible_text">-</text><label>4</label>
                    <input name="checkboxes" type="checkbox" value="5">
                    <text class="invisible_text">-</text><label>5</label>
                </span>
            </div>
            <div>
                <input value="1" type="radio" name="radius" id="r1">
                <label for="r1">1</label>
                <input value="1.5" type="radio" name="radius" id="r2">
                <label for="r2">1.5</label>
                <input value="2" type="radio" name="radius" id="r3">
                <label for="r3">2</label>
                <input value="2.5" type="radio" name="radius" id="r4">
                <label for="r4">2.5</label>
                <input value="3" type="radio" name="radius" id="r5">
                <label for="r5">3</label>
            </div>

        </form>
        <button onclick="validation()">Отправка</button>

        <div>
            <text id="x_error">
                Не введена координата x
            </text> <br>
            <text id="y_error">
                Не выбрана координата y
            </text> <br>
            <text id="r_error">

            </text> <br>
        </div>
        <table>
            <tr>
                <td>Координата X</td>
                <td>Координата Y</td>
                <td>Радиус R</td>
                <td>Факт попадания</td>
            </tr>
            <%
                ArrayList<Coordinate> listSession = (ArrayList<Coordinate>) request.getSession().getAttribute("sessionList");
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
        <script>
            <% if (request.getSession().isNew()){ %>
            sessionStorage.setItem("json",null)
            <%}%>
        </script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script type="text/javascript" src="js/table.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script>
            <% if (request.getSession() == null){ %>
            arrayOfCoordsFromServer = []
            clearArea()
            draw()
            <%}%>

        </script>
    </body>
</html>