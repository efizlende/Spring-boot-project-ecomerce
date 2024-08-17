<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <title>Adicionar Produto</title>
    <style>
        .bg-gray-custom {
            background-color: rgb(132, 132, 248);
        }
        .jumbotron {
            margin-top: 2em;
        }
        .footer {
            background-color: rgb(226, 223, 223);
            bottom: 0;
            width: 100%;
            text-align: center;
            padding: 10px 0;
            margin-top: 10em;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-gray-custom">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/views/adminHome.jsp">
                <img src="${pageContext.request.contextPath}/img/logo.jpeg" width="70em" height="50em" class="d-inline-block align-top">
                <span class="navbar-brand">E-Tech</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto" id="nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/views/adminHome.jsp">
                            <i class="bi bi-cart-fill"></i> Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="bi bi-person-fill"></i> Perfil
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="bi bi-box-arrow-right"></i> Sair
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="jumbotron container border border-info">
        <h3>Adicionar novo produto</h3>
        <form action="${pageContext.request.contextPath}/admin/products/add" method="post">
            <div class="row">
                <div class="col-sm-5">
                 
                    <div class="form-group">
                        <label for="name">Nome</label> 
                        <input type="text" class="form-control border border-warning" required name="name" placeholder="Nome">
                    </div>
                    <div class="form-group">
                        <label for="category">Selecionar Categoria</label> 
                        <select class="form-control border border-warning" name="categoryid" required>
                            <option selected>Selecione a categoria</option>
                            <c:forEach var="category" items="${categories}">
                                <option value="${category.id}">${category.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="price">Preço</label> 
                        <input type="number" class="form-control border border-warning" required name="price" min="1" placeholder="Preço">
                    </div>
                    <div class="form-group">
                        <label for="weight">Peso em gramas</label> 
                        <input type="number" class="form-control border border-warning" required name="weight" min="1" placeholder="Peso">
                    </div>
                    <div class="form-group">
                        <label for="quantity">Quantidade disponível</label> 
                        <input type="number" class="form-control border border-warning" required name="quantity" min="1" placeholder="Quantidade">
                    </div>
                </div>

                <div class="col-sm-5"><br>
                    <div class="form-group">
                        <label for="description">Descrição do produto</label>
                        <textarea class="form-control border border-warning" rows="4" name="description" placeholder="Detalhes do produto"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="productImage">Link da imagem</label>
                        <input type="text" class="form-control border border-warning" required name="productImage" placeholder="Digite o nome da imagem (ex: produto.jpg)">
                    </div>
                    <div class="form-group">
                        <img src="" alt="Imagem do Produto" id="imgPreview" height="100px" width="100px" style="margin-top: 20px">
                    </div>
                    <input type="hidden" name="imgName">
                    <input type="submit" class="btn btn-primary">
                </div>
            </div>
        </form>
    </div>

    <footer class="footer">
        <p>&copy; 2024 Loja de material informático.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-4fWPe5G+e0pne6fa9f+ThpHQp0q1k4ER2RYl1aZWLJEDpZnSeRfq0TV3Rw+FltrK" crossorigin="anonymous"></script>
</body>
</html>
