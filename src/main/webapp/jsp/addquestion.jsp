
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vaalikone</title>



</head>
<body>
<h2>Add question</h2>
<form action='addquestion' target='showadmin' method='get'>
Kysymys: <input type='text' name='KYSYMYS' size="100" value=''><br>
<input type='submit' name='ok' value='Send'> 
</form>

</body>
</html>