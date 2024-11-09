<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Task</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Add New Task</h1>
        
        <form action="${pageContext.request.contextPath}/tasks/add" method="post">
            <div class="mb-3">
                <label for="description" class="form-label">Task Description:</label>
                <input type="text" class="form-control" id="description" name="description" required>
            </div>
            
            <div class="mb-3">
                <label for="status" class="form-label">Status:</label>
                <select class="form-select" id="status" name="status">
                    <option value="Pending">Pending</option>
                    <option value="Completed">Completed</option>
                </select>
            </div>
            
            <button type="submit" class="btn btn-primary">Add Task</button>
            <a href="${pageContext.request.contextPath}/tasks" class="btn btn-secondary">Cancel</a>
        </form>
    </div>
</body>
</html>