package com.spring.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.spring.model.Task;
import com.spring.repository.TaskRepository;

@WebServlet("/tasks/*")
public class TaskController extends HttpServlet {
    
	private final TaskRepository taskRepository = TaskRepository.getInstance();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        
        if (pathInfo == null || pathInfo.equals("/")) {
            // Display task list
            request.setAttribute("tasks", taskRepository.getAllTasks());
            request.getRequestDispatcher("/WEB-INF/views/taskList.jsp")
                   .forward(request, response);
        } else if (pathInfo.equals("/add")) {
            // Show add task form
            request.getRequestDispatcher("/WEB-INF/views/addTask.jsp")
                   .forward(request, response);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        
        if (pathInfo == null || pathInfo.equals("/add")) {
            // Add new task
            String description = request.getParameter("description");
            String status = request.getParameter("status");
            
            if (description != null && !description.trim().isEmpty()) {
                taskRepository.addTask(description, status);
            }
            
            response.sendRedirect(request.getContextPath() + "/tasks");
        }
    }
    
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        String[] pathParts = pathInfo.split("/");
        
        if (pathParts.length == 3 && pathParts[1].equals("delete")) {
            try {
                Integer taskId = Integer.parseInt(pathParts[2]);
                boolean deleted = taskRepository.deleteTask(taskId);
                response.setStatus(deleted ? HttpServletResponse.SC_OK : 
                                          HttpServletResponse.SC_NOT_FOUND);
            } catch (NumberFormatException e) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            }
        }
    }
}