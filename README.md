# Todo List Manager - MVC Implementation

A J2EE web application that implements a Todo List Manager using the Model-View-Controller (MVC) design pattern. This application allows users to manage their tasks through a simple and intuitive interface.

## Project Description

This Todo List Manager is a web-based application built using J2EE technologies that demonstrates the implementation of the MVC architectural pattern. The application provides basic CRUD (Create, Read, Update, Delete) operations for managing tasks.

### Features
- Add new tasks with description and status
- View list of all tasks
- Delete existing tasks
- Status tracking (Pending/Completed)
- Responsive user interface
- Form validation
- Error handling

### Technologies Used
- Java EE (Jakarta EE)
- Servlet API
- JSP (JavaServer Pages)
- JSTL (JavaServer Pages Standard Tag Library)
- HTML/CSS
- Maven (for dependency management)
- Apache Tomcat 10.x

## Setup and Deployment Instructions

### Prerequisites
- JDK 17 or higher
- Apache Maven 3.6 or higher
- Apache Tomcat 10.x
- IDE (Eclipse/IntelliJ IDEA) with J2EE support

### Local Development Setup

1. Clone the repository:
```bash
git clone https://github.com/yourusername/todo-list-mvc.git
cd todo-list-mvc
```

2. Configure the project in your IDE:
   - Import as Maven project
   - Configure build path to use JDK 17
   - Set up Tomcat server in IDE

3. Build the project:
```bash
mvn clean install
```

4. Deploy to Tomcat:
   - Option 1: Deploy through IDE
     - Right-click project → Run As → Run on Server
     - Select Tomcat server → Finish
   
   - Option 2: Manual deployment
     - Copy the generated WAR file from `target/todo-mvc.war`
     - Place it in Tomcat's `webapps` directory
     - Start Tomcat server

5. Access the application:
```
http://localhost:8080/todo-mvc/
```

### Project Structure
```
todo-mvc/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/
│   │   │       └── todo/
│   │   │           ├── model/
│   │   │           │   ├── Task.java
│   │   │           │   └── TaskRepository.java
│   │   │           └── controller/
│   │   │               └── TaskController.java
│   │   ├── webapp/
│   │   │   ├── WEB-INF/
│   │   │   │   ├── views/
│   │   │   │   │   ├── taskList.jsp
│   │   │   │   │   └── addTask.jsp
│   │   │   │   └── web.xml
│   │   │   └── index.jsp
│   │   └── resources/
│   └── test/
├── pom.xml
└── README.md
```

## Usage Guide

1. View Tasks:
   - Access the home page to see all tasks
   - Tasks are displayed in a table with ID, Description, Status, and Actions

2. Add New Task:
   - Click "Add New Task" button
   - Fill in the task description
   - Select status (Pending/Completed)
   - Click Submit

3. Delete Task:
   - Click the Delete button next to the task
   - Confirm deletion when prompted

## Team Information
- Name: [Your Name]
- Student ID: [Your Student ID]
- Course: [Course Name]
- Instructor: [Instructor Name]

## Testing

The application has been tested on:
- Chrome 120+
- Firefox 120+
- Safari 17+
- Edge 120+

### Test Cases Covered
1. Task Creation
   - Valid input submission
   - Empty description validation
   - Form field validation

2. Task Deletion
   - Single task deletion
   - Invalid ID handling

3. Task Viewing
   - List rendering
   - Empty state handling
   - Multiple task display

## Known Issues
- No persistent storage (data is lost on server restart)
- No task editing functionality
- No user authentication

## Future Enhancements
- Add database integration
- Implement task editing
- Add user authentication
- Add task categories
- Implement task sorting and filtering

## Support
For any issues or queries, please contact:
- Email: jhahitesh1994@gmail.com

## License
This project is part of academic coursework and is subject to university guidelines and policies.

![Add Task](https://github.com/HJHitesh/SpringMVC_J2EEAPP/blob/master/src/main/webapp/WEB-INF/images/Add_Task.png)
![List Task](https://github.com/HJHitesh/SpringMVC_J2EEAPP/blob/master/src/main/webapp/WEB-INF/images/List_Task.png)
![Delete Task 1](https://github.com/HJHitesh/SpringMVC_J2EEAPP/blob/master/src/main/webapp/WEB-INF/images/Delete_Task.png)
![Delete Task1](https://github.com/HJHitesh/SpringMVC_J2EEAPP/blob/master/src/main/webapp/WEB-INF/images/After_Delete.png)
