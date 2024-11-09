<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Todo List Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Todo List Manager</h1>
        
        <div class="mb-3">
            <a href="${pageContext.request.contextPath}/tasks/add" class="btn btn-primary">Add New Task</a>
        </div>
        
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="task" items="${tasks}">
                    <tr>
                        <td>${task.id}</td>
                        <td>${task.description}</td>
                        <td>
                            <span class="badge ${task.status == 'Completed' ? 'bg-success' : 'bg-warning'}">
                                ${task.status}
                            </span>
                        </td>
                        <td>
                            <button onclick="deleteTask(${task.id})" class="btn btn-danger btn-sm">Delete</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <script>
        function deleteTask(taskId) {
            if (confirm('Are you sure you want to delete this task?')) {
                fetch('${pageContext.request.contextPath}/tasks/delete/' + taskId, {
                    method: 'DELETE'
                }).then(response => {
                    if (response.ok) {
                        window.location.reload();
                    } else {
                        alert('Error deleting task');
                    }
                });
            }
        }
    </script>
</body>
</html>