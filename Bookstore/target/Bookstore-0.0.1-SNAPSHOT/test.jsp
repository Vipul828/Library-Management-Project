<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
  <title>JSTL Example</title>
</head>
<body>
  <h1>Enter a number:</h1>
  <form method="post">
    <input type="text" name="number" />
    <br /><br />
    <input type="radio" name="operation" value="square" />Square
    <input type="radio" name="operation" value="cube" />Cube
    <br /><br />
    <input type="submit" value="Submit" />
  </form>
  <br />

  <c:choose>
    <c:when test="${not empty param.number and not empty param.operation}">
      <c:choose>
        <c:when test="${param.operation == 'square'}">
          <p>The square of ${param.number} is ${param.number * param.number}.</p>
        </c:when>
        <c:when test="${param.operation == 'cube'}">
          <p>The cube of ${param.number} is ${param.number * param.number * param.number}.</p>
        </c:when>
      </c:choose>
    </c:when>
  </c:choose>
</body>
</html>