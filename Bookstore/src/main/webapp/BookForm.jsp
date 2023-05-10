<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Library Application</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <style>
        body {
            background-color: #f8f6f7;
            font-family: 'Helvetica Neue', sans-serif;
            color: #333;
        }
        h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-top: 2rem;
            margin-bottom: 0;
        }
        h2 {
            font-size: 2rem;
            font-weight: bold;
            margin-top: 2rem;
            margin-bottom: 0;
        }
        a {
            color: #007bff;
            text-decoration: none;
            border-bottom: 2px solid #007bff;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 2rem;
            margin-bottom: 2rem;
        }
        th {
            text-align: left;
            font-weight: bold;
            padding: 1rem;
            background-color: #007bff;
            color: #fff;
        }
        td {
            padding: 1rem;
        }
        input[type="text"] {
            width: 100%;
            padding: 0.5rem;
            border: none;
            border-radius: 5px;
            margin-bottom: 1rem;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 5px;
            font-size: 1.2rem;
            cursor: pointer;
            animation-duration: 1s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
            animation-name: rubberBand;
        }
        caption {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body style="background-image: url('https://images.unsplash.com/photo-1468070454955-44decac2f8cb')">
    <center>
        <h1 class="animate__animated animate__bounceInDown">Library Management</h1>
        <h2>
            <a href="/Bookstore/new" class="animate__animated animate__bounceInLeft">Add New Book</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/Bookstore/list" class="animate__animated animate__bounceInRight">List All Books</a>
        </h2>
    </center>
    <div align="center">
        <c:if test="${book != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    <c:if test="${book != null}">
                        Edit Book
                    </c:if>
                    <c:if test="${book == null}">
                        Add New Book
                    </c:if>
                </h2>
            </caption>
                <c:if test="${book != null}">
                    <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
                </c:if>           
            <tr>
                <th>Title: </th>
                <td>
                    <input type="text" name="title" size="45"
                            value="<c:out value='${book.title}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Author: </th>
                <td>
                    <input type="text" name="author" size="45"
                            value="<c:out value='${book.author}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Price: </th>
                <td>
                    <input type="text" name="price" size="5"
                            value="<c:out value='${book.price}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Book Issued By: </th>
                <td>
                    <input type="text" name="bookIssued" size="45"
                            value="<c:out value='${book.bookIssued}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Due Date for the Book: </th>
                <td>
                    <input type="text" name="dueDate" size="45"
                            value="<c:out value='${book.dueDate}' />"
                    />
                </td>
            </tr>
            <tr>
            <tr>
                <th>Returned the Book: </th>
                <td>
                    <input type="text" name="returned" size="45"
                            value="<c:out value='${book.returned}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
        </form>
    </div>   
</body>
</html>