<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${pageTitle}</title>  <!-- Dynamic title passed from controller -->
    <link rel="stylesheet" type="text/css" href="/css/style.css"> <!-- Link to your CSS -->
</head>
<body>
    <h1>${pageTitle}</h1>  <!-- Display page title -->

    <h2>Fruits:</h2>
    <ul>
        <c:forEach var="Fruit" items="${Fruits}">
            <li>${fruit}</li>  <!-- Loop through and display fruits -->
        </c:forEach>
    </ul>

    <h2>Vegetables:</h2>
    <ul>
        <c:forEach var="Vegetable" items="${Vegetables}">
            <li>${vegetable}</li>  <!-- Loop through and display vegetables -->
        </c:forEach>
    </ul>
</body>
</html>
