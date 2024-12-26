<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <style>
        #page-title, #create {
            text-align: center;
        }
        table {
            margin: auto;
            border-collapse: collapse;
            font-size: 18px;
        }
        td, th {
            border-style: solid;
            border-width: 2px;
            border-color: blue;
            padding: 15px 20px;
        }
        th {
            background-color: #a5a0ff;
        }
        tbody tr:nth-child(odd) {
            background-color: #d7e3ff;
        }
        .edit, .delete {
            text-decoration: none;
            padding: 5px;
            color: wheat;
            border-radius: 5px;
        }
        .edit {
            background-color: green;
        }
        .delete {
            background-color: red;
        }
    </style>
</head>
<body>
    <h1 id="page-title">Customers</h1>
    <p id="create">
        <a href="${pageContext.request.contextPath}/customer?action=create">Create new customer</a>
    </p>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items='${requestScope["customers"]}' var="customer">
                <tr>
                    <td><a href="/customer?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
                    <td>${customer.getEmail()}</td>
                    <td>${customer.getAddress()}</td>
                    <td><a class="edit" href="/customer?action=edit&id=${customer.getId()}">edit</a></td>
                    <td><a class="delete" href="/customer?action=delete&id=${customer.getId()}">delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>