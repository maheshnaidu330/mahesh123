<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
h1{
color:#008CBA;
text-align: center;
}
table {
	border-collapse: collapse;
	width: 80%;
	margin: 20px 0;
	
}

th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
	width: 20%;
}

th {
	background-color: #008CBA;
	color: #fff;
}

td a {
	display: inline-block;
	margin-right: 10px;
	background-color: #008CBA;
	color: #fff;
	padding: 5px 10px;
	border-radius: 3px;
	text-decoration: none;
}

td a:hover {
	background-color: #005f7f;
}
.center {
  margin-left: auto;
  margin-right: auto;
}
.add
{
display: inline-block;
text-decoration: none;
padding: 10px;
color: #fff;
background-color: #008CBA;
margin-left: 10%;

}
.add:HOVER {
	background-color:  #005f7f;
}
</style>
</head>
<body>
<h1>Library Management</h1><hr>
<a href="/Library/addBookjsp" class="add"><span>&#43;</span>   Add Book</a>
	<table class="center" >
		<thead>
			<tr>
				<th>Title</th>
				<th>Author</th>
				<th>ISBN</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="book" items="${list}">
				<tr>
					<td><c:out value="${book.title}" /></td>
					<td><c:out value="${book.author}" /></td>
					<td><c:out value="${book.isbn}" /></td>
					<td><a href="editBook/${book.id}">Edit</a>
						<a href="deleteBook/${book.id}"
						onclick="return confirm('Are you sure you want to delete this book?')">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>