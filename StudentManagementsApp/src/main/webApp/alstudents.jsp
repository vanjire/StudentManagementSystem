<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/allstudents.css">
</head>
<body>
    <div class="container">
        <table>
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Course</td>
                <td>RollNumber</td>
            </tr>
          <%@ page import="java.util.List" %>
<%@ page import="com.example.demo.StudentEntity" %>

<%
List<StudentEntity> students = (List<StudentEntity>) request.getAttribute("students");

for(StudentEntity s : students){
%>

<tr>
    <td><%= s.getId() %></td>
    <td><%= s.getFirstName() %></td>
    <td><%= s.getCourse() %></td>
    <td><%= s.getRollNumber() %></td>
</tr>

<%
}
%>
        </table>
    </div>
</body>
</html>