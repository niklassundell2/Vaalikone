<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@ page import="java.util.ArrayList" %>   
<%@ page import="data.Questions" %>   
    
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
<h2>Questions</h2>
<ol>
<c:forEach var="kysymykset" items="${requestScope.kysymykset}" >
<li>${questions.KYSYMYS_ID}: ${questions.KYSYMYS} <a href='/delete?id=${questions.KYSYMYS_ID}'>delete</a> <a href='/readtoupdate?id=${questons.KYSYMYS_ID}'>update</a>
</c:forEach>
</ol>

<%
ArrayList<Questions> questionList=(ArrayList<Questions>)request.getAttribute("kysymykset");

for (int i=0;questionList!=null && i<questionList.size();i++){
	Questions q=questionList.get(i);
	out.println(q.getId()+": "+q.getQuestion()+"<a href='/delete?id="+q.getId()+"'>delete</a> <a href='/readtoupdate?id="+q.getId()+"'>update</a>");
	
}
%>

<%-- <%@ include file="../html/admin.html" %>--%>

</body>
</html>