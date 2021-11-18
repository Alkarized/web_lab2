<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <% final String message = (String) request.getAttribute ("ERROR_TEXT");%>
    <title>Error page</title>
</head>
<body>

<h1>Hi! You've just ran into error.</h1>
    <% if (message != null) {%>
        <%= message%>
    <%}%>
    Go back to main Page <a href = "${pageContext.request.contextPath}/index.jsp">beeck</a>
</body>
</html>
