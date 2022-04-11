<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
<%@ page import="java.util.ArrayList" %>   
<%@ page import="data.Questions" %>   
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html lang="en">
    <head>
 
        <title>Vaalikone</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../index.css">
    </head>
    <body>
      
      <div class="sticky-top bg-primary">
        <nav class="navbar navbar-expand-md">
          
          <a class="navbar-brand" href="#">Logo</a>
          <button class="navbar-toggler navbar-dark" type="button" data-toggle="collapse" data-target="#main-navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="main-navigation">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#">Home</a>
              </li>
              <li class="nav-item">
                
                <a class="nav-link" href="#">Contact</a>
              </li>
              <li class="nav-item">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-dark" data-toggle="modal" data-target="#exampleModalCenter">
                  Log off
                </button>
              </li>
            </ul>
          </div>
        </nav>
      </div>

      <header class="page-header header container-fluid">
        <div class="overlay">

        </div>
      </header>
      

      
	<div class="modal fade" id="hallinnoiKysymys" tabindex="-1" role="dialog" aria-labelledby="hallinnoiKysymys" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Hallinnoi kysymyksia</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

			<c:forEach var="Questions" items="${requestScope.kysymykset}" >
			<li>${Questions.id}: ${Questions.question} <a href='/delete?KYSYMYS_ID=${Questions.id}'>delete</a> <a href='/readtoupdate?KYSYMYS_ID=${Questions.id}'>update</a> <a href='/readtoadd'>add</a>
			</c:forEach>
		
      </div>
    </div>
  </div>
</div>
      <div class="description">
        <div class="container features">
          <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12">
        <h1>Find Your Candidates!</h1>
        <p>We offer you access to get to know all candidates.<br> Take a quick test and find out whose values and opinions match yours.</p>
        <button class="btn btn-outline-secondary btn-lg">Hallinnoi ehdokkaita</button>
        <button type="button" class="btn btn-outline-secondary btn-lg"data-toggle="modal" data-target="#hallinnoiKysymys">Hallinnoi kysymyksia</button>
        

      </div>
    </div>
  </div>
</div>

      <footer class="page-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-8">
                    <h6 class="text-uppercase font-weight-bold">Additional Information</h6>
                    <p>Authors: Niklas Sundell, Niko Rantala, Laura Mattila</p>
                    <address>HÃ¤meen ammattikorkeakoulu HAMK PL 230 13101 HÃ¤meenlinna</address>
            </div>
          </div>
        </div>
    </footer>







    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    <script src="../index.js"></script>



    </body>
    
</html>