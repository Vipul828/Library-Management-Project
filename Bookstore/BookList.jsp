<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <style>
        body {
            background-color: #f5f5dc; /* beige color */
            background-image: url("https://cdn.pixabay.com/photo/2015/10/29/12/32/books-1016269_960_720.jpg"); /* library background image */
            background-repeat: no-repeat;
            background-size: cover;
        }

        h1 {
            text-align: center;
            color: #333;
            text-shadow: 2px 2px 2px #ccc;
        }

        h2 {
            text-align: center;
            color: #333;
            text-shadow: 1px 1px 1px #ccc;
        }

        table {
            border-collapse: collapse;
            margin: 20px auto;
            width: 80%;
            max-width: 800px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        }

        th,
        td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            color: #333;
            text-decoration: none;
            border-bottom: 2px solid #333;
        }

        a:hover {
            background-color: #333;
            color: #fff;
        }

    </style>
</head>
<body>
    <h1 class="animate__animated animate__zoomInDown">Library Management</h1>
        <h2>
            <a href="/Bookstore/new">Add New Book</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/Bookstore/list">List All Books</a>
             
        </h2>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Books</h2></caption>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Book Issued</th>
                <th>Due Date</th>
                <th>Returned</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td><c:out value="${book.bookIssued}" /></td>
                    <td><c:out value="${book.dueDate}" /></td>
                    <td><c:out value="${book.returned}" /></td>
                    <td>
                        <a href="/Bookstore/edit?id=<c:out value='${book.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/Bookstore/delete?id=<c:out value='${book.id}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>