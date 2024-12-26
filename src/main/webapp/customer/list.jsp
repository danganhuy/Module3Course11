<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <style>
        table {
            border-collapse: collapse;
        }
        td {
            border-style: solid;
            border-width: 2px;
            border-color: blue;
            padding: 2px 5px;
        }
    </style>
</head>
<body>
    <h1>Customers</h1>
    <p>
        <a href="${pageContext.request.contextPath}/customer?action=create">Create new customer</a>
    </p>
    <table>
        <tr>
            <td>Name</td>
            <td>Email</td>
            <td>Address</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach items='${requestScope["customers"]}' var="customer">
            <tr>
                <td><a href="/customer?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
                <td>${customer.getEmail()}</td>
                <td>${customer.getAddress()}</td>
                <td><a href="/customer?action=edit&id=${customer.getId()}">edit</a></td>
                <td><a href="/customer?action=delete&id=${customer.getId()}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>