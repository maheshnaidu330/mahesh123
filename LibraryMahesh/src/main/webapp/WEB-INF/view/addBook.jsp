
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<style type="text/css">

h1{
color:#008CBA;
text-align: center;
}
form {
  display: flex;
  flex-direction: column;
  width: 400px;
  margin: 0 auto;
}

label {
  margin-bottom: 10px;
  font-weight: bold;
}

input[type="text"] {
  padding: 8px;
  margin-bottom: 20px;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
}

input[type="text"]:focus {
  border-color: #008CBA;
}

button[type="submit"] {
  padding: 8px 16px;
  background-color: #008CBA;
  color: #fff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
}

button[type="submit"]:hover {
  background-color: #005f7f;
}

</style>
</head>
<body>
<h1>Library Management</h1><hr>
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
