<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Book</title>
    </head>
    <body>
     <center>
        <h1>Books Management</h1>
        <h2>
            <a href="/Bookstore/new">Add New Book</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/Bookstore/list">List All Books</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/Bookstore/delete">Delete Books</a>
             
        </h2>
    </center>
        <h1>Delete Book</h1>
        <p>Are you sure you want to delete the following book?</p>
        <table>
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Book Issued</th>
                <th>Due Date</th>
            </tr>
            <tr>
                <td><c:out value="${book.title}" /></td>
                <td><c:out value="${book.author}" /></td>
                <td><c:out value="${book.price}" /></td>
                <td><c:out value="${book.bookIssued}" /></td>
                <td><c:out value="${book.dueDate}" /></td>
                <td><c:out value="${book.returned}" /></td>
            </tr>
        </table>
        <form action="delete" method="post">
            <input type="text" name="id" value="${book.id}" />
            <input type="submit" value="Yes" />
            <a href="BookForm.jsp">No</a>
        </form>
    </body>
</html>
