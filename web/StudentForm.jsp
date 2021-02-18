<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>div[class=student-info]{border: 2px solid black;width:350px;height: 250px;margin-left: 100px; padding:10px 60px 20px 30px;}</style>
        <style>h3{font-size: 15px;margin-left: 100px;}h1{font-size:20px}input[type=text]{border: 2px solid black;}</style>
         
        <link rel="stylesheet" href="studentinf.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>student info</title>
    </head>
    <body>
        <h3>Page1-Student Info</h3>
        <div class="container">
            <div class="student-info">
                <h1>Student information form</h1>
                <form action="student" method="post">
                    <table border="0">
                        <tbody>
                            <tr>
                                <td>Student ID:</td>
                                <td><input type="text" name="id" required="" /></td>
                                <td>${error}</td>
                            </tr>
                            <tr>
                                <td>Names :</td>
                                <td><input type="text" name="names"  required=""/></td>
                            </tr>
                            <tr>
                                <td>Gender:</td>
                                <td> <select name="gender">
                            <option>MALE</option>
                            <option>FEMALE</option>
                        </select>
                                    </td> 
                            </tr>
                            <tr>
                                <td>Date of Birth:</td>
                                <td><input type="date" name="dob" required=""/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Next" /></td>
                            </tr>
                        </tbody>
                    </table>
                </form>

            </div>
        </div>
    </body>
</html>
