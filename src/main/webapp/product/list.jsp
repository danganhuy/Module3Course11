<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
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
        .search-container {
            background-color: white;
            margin: 30px auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        .search-container h1 {
            margin-bottom: 20px;
            font-size: 24px;
            text-align: center;
            color: #333;
        }

        .search-container form {
            display: flex;
            align-items: center;
        }

        .search-container input[type="text"] {
            flex: 1;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .search-container button {
            padding: 10px 20px;
            margin-left: 10px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .search-container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1 id="page-title">Products</h1>
    <div class="search-container">
        <form action="/product" method="get">
            <input type="text" name="name" placeholder="Type product name">
            <button type="submit" name="action" value="search">Search</button>
        </form>
    </div>
    <p id="create">
        <a href="${pageContext.request.contextPath}/product?action=create">Create new product</a>
    </p>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Price</th>
                <th>Description</th>
                <th>manufacturer</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items='${requestScope["products"]}' var="product">
                <tr>
                    <td><a href="/product?action=view&id=${product.getId()}">${product.getName()}</a></td>
                    <td>${product.getPrice()}</td>
                    <td>${product.getDescription()}</td>
                    <td>${product.getManufacturer()}</td>
                    <td><a class="edit" href="/product?action=edit&id=${product.getId()}">edit</a></td>
                    <td><a class="delete" href="/product?action=delete&id=${product.getId()}">delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>