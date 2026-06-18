<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/admin.css">
</head>
<body>
    <div class="container">
        <div class="side-bar">
            <a href="/addsdata" class="derf-t">Add new student</a>
            <a href="/allstudents" class="derf-t">View all students</a>
            <form action="findName" method="post">
		<input type="text" name="name" placeholder="search by student name">
		<button type="submit">Find</button>
	  </form>
	   <form action="findId" method="post">
		<input type="text" name="id" placeholder="search by student Id">
		<button type="submit">Find</button>
	  </form>
           
            <a href="/update" class="derf-t">Update student details</a>
            <a href="/de" class="derf-t" >Delete student</a>
           
        </div>
        <div class="containt"></div>
    </div>
</body>
</html>