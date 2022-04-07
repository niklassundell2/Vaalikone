<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vaalikone</title>

<link rel="stylesheet" type="text/css" href="mycssfilesomewhere.css">
<script src="myscriptfile.js"></script>

</head>
<body>
<h2>Edit question</h2>
<form action='update' method='post'>
Fish id: <input type='text' name='id' value='${requestScope.questions.KYSYMYS_ID}' readonly><br> 
Fish breed: <input type='text' name='kysymys' value='${requestScope.questions.KYSYMYS}'><br>
<input type='submit' name='ok' value='Send'> 
</form>

</body>
</html>