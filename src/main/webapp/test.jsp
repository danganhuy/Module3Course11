<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search Form</title>
  <style>

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
  <div class="search-container">
    <form action="/search" method="get">
      <input type="text" name="query" placeholder="Type product name">
      <button type="submit">Search</button>
    </form>
  </div>
</body>
</html>

