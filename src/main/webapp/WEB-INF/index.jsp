<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to Todo List Manager</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
        .welcome-container {
            text-align: center;
            margin-top: 50px;
        }
        .welcome-title {
            color: #333;
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        .welcome-text {
            color: #666;
            font-size: 1.2em;
            margin-bottom: 30px;
        }
        .start-button {
            display: inline-block;
            padding: 15px 30px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1.1em;
            transition: background-color 0.3s;
        }
        .start-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="welcome-container">
        <h1 class="welcome-title">Welcome to Todo List Manager</h1>
        <p class="welcome-text">Organize your tasks efficiently and boost your productivity</p>
        <a href="${pageContext.request.contextPath}/tasks" class="start-button">Get Started</a>
    </div>
</body>
</html>