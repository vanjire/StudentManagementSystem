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
         

<tr>
    <td>${s.id}</td>
    <td>${ s.firstName }</td>
    <td>${ s.course }</td>
    <td>${s.rollNumber }</td>
</tr>


        </table>
    </div>
</body>
</html>