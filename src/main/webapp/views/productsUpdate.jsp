<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<%@page import="java.sql.*"%>
<html lang="pt" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<title>Atualizar Produto</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				th:src="@{/images/logo.png}" src="../static/images/logo.png"
				width="auto" height="40" class="d-inline-block align-top" alt="" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto"></ul>
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link"
						href="/dashboard" >Home </a></li>
					<li class="nav-item active"><a class="nav-link"
						href="/logout" >Sair</a></li>
				</ul>

			</div>
		</div>
	</nav><br>
	<c:forEach var="product" items="products">
	<div class="jumbotron container border border-info">
		<h3>Atualizar produtos existentes</h3>
		<form action="/products/update/${product.id}" method="post">
			<div class="row">
				<div class="col-sm-5">
					
					<div class="form-group">
						<label for="name">Id</label> 
						<input type="number" readonly="readonly" class="form-control border border-success" name="id"  value="${product.id}">
						

					</div>
					<div class="form-group">
						<label for="name">Nome</label> 
						<input type="text" class="form-control border border-success" required name="name" value="${product.name }" placeholder="Digite o nome">
					</div>
					
					<div class="form-group">
					
						<label for="category">Selecionar Categoria</label> 
						<select class="form-control border border-success" name="categoryid" readonly>
							<option selected>Selecione a categoria</option>
                            							<c:forEach var="category" items="${categories}">
                            								<option value="${category.id}">${category.name}</option>
                            							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="price">Preco</label> 
						<input type="number" class="form-control border border-success" required name="price" value="${ product.price }" min="1" placeholder="Preco">
					</div>
					<div class="form-group">
						<label for="weight">Peso em gramas</label> 
						<input type="number" class="form-control border border-success" required name="weight" value="${product.weight }" min="1" placeholder="Peso">
					</div>
					<div class="form-group">
						<label for="weight">Quantidade disponivel</label> 
						<input type="number" class="form-control border border-success" required name="quantity" value="${ product.quantity }" min="1" placeholder="Quantidade">
					</div>
					
					
				</div>
				
				<div class="col-sm-5">
				<div class="form-group">
						<label for="description">Descricao do produto</label>
						<textarea class="form-control border border-success" rows="4" name="product.description" placeholder="Detalhes do produto" value= "${ pdescription }"></textarea>
					</div>
					<p>Imagem do produto</p>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="productImage" value="${ product.image }" accept="image/jpeg, image/png" id="productImage"  onchange="loadfile(event)"/>
						<label class="custom-file-label border border-success" for="productImage">Choose file</label>
						<script type="text/javascript">
						var loadFile = function(event) {
							var image = document.getElementById('imgPreview');
							image.src = URL.createObjectURL(event.target.files[0]);
						};
						</script>
					</div>
					<div class="form-group">
						<img src="#" id="imgPreview" height="100px" width="100px"
							style="margin-top: 20px" alt=" ">
					</div>
					<input type="hidden" name="imgName">
					<input type="submit" value="Atualizar detalhes" class="btn btn-primary">
				</div>
			</div>
		</form>
	</div>
	</c:forEach>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>