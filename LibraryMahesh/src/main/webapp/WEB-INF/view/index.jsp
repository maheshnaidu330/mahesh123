<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addBook" method="post">
<label for="title">Title:</label>
<input type="text" name="title" id="title" required>

<label for="author">Author:</label>
<input type="text" name="author" id="author" required>

<label for="isbn">ISBN:</label>
<input type="text" name="isbn" id="isbn" required>
<button type="submit">Add Book</button>
</form>

</body>
</html>