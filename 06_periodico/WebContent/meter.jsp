<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>

	<div class="container">

		<h2>Seccion de Noticias</h2>

		<a href="Meternoticia"></a>


		<div class="row">
			<form class="col s12" action="Meternoticia" method="post">
				<div class="row">
					<div class="input-field col s12">
						<input name="email" type="email" class="validate"> 
						<label for="email" data-error="wrong" data-success="right">Email</label>
					</div>
				</div>
				
				<div class="input-field col s12">
						<input name="titulo"  type="text" class="validate"> 
						<label for="titulo" data-error="wrong" data-success="right">Titulo Noticia</label>
					</div>
					
					<div class="input-field col s12">
						<input name="contenido" type="text" class="validate"> 
						<label for="contenido" data-error="wrong" data-success="right">Contenido</label>
					</div>

				<div class="input-field col s12">
					<select name="idcategoria">
						<option value="" disabled selected>Categoria</option>
						<option value="1">Deportes</option>
						<option value="2">Política</option>
						<option value="3">Option 3</option>
					</select>
				</div>



				<input type="submit" value="Añadir noticia"><a class="waves-effect waves-light btn"></a>
				
			</form>
		</div>


	</div>

</body>
</html>