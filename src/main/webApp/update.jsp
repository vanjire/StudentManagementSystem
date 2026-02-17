<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/addstudent.css">
</head>

<body>
    <div class="container">
        <form action="updateHere" method="post">
           <input type="number" name="rollNumber" placeholder="roll number">
            <input type="text" name="course" placeholder="course">
            <input type="text" name="firstName" placeholder="first name">
            <input type="text" name="lastName" placeholder="last name">
            <input type="text" name="middleName" placeholder="middle name">
           
            
            <span style="color: white;font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">
                DOB<input type="date" name="dateOfBirth" placeholder="date of birth">

            </span>
           
          
             <input type="email" name="email" placeholder="email">
             

          
          
            <button type="submit">submit</button>
        </form>
    </div>
</body>

</html>