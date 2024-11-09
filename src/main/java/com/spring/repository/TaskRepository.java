package com.spring.repository;


import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import com.spring.model.Task;

public class TaskRepository {
    private static final TaskRepository instance = new TaskRepository();
    private final List<Task> tasks = new ArrayList<>();
    private final AtomicInteger idGenerator = new AtomicInteger(1);
    
    private TaskRepository() {
        // Private constructor for singleton pattern
    }
    
    public static TaskRepository getInstance() {
        return instance;
    }
    
    public Task addTask(String description, String status) {
        Task task = new Task(idGenerator.getAndIncrement(), description, status);
        tasks.add(task);
        return task;
    }
    
    public List<Task> getAllTasks() {
        return new ArrayList<>(tasks);
    }
    
    public boolean deleteTask(Integer id) {
        return tasks.removeIf(task -> task.getId().equals(id));
    }
    
    public Task getTaskById(Integer id) {
        return tasks.stream()
                   .filter(task -> task.getId().equals(id))
                   .findFirst()
                   .orElse(null);
    }
}
