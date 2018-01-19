<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Required meta tags -->

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	

 <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<title>Insert title here</title>
<style>
h2, input{
	text-align: center;
}

</style>
</head>

<body>


	<div class="container">

		<h2>Seccion de Noticias</h2>

		<a href="Consultar"><input type="submit" value="Leer noticia"></a>

 <% String msg = (String)session.getAttribute("servletMsg");
 	out.println(msg);
 %>

	
</div>

	<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
</body>
</html>