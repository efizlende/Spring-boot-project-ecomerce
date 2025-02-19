<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<title>Clientes</title>
  <style>
        .bg-gray-custom {
            background-color: rgb(132, 132, 248); 
      
        }
       


/* Estilos para o rodap� */
.footer {
    background-color: rgb(226, 223, 223);

    bottom: 0;
    width: 100%;
    text-align: center;
    padding: 10px 0;
   
    margin-top: 20em;
    
}
      
      
    </style>
</head>
<body class="bg-light">
<nav class="navbar navbar-expand-lg navbar-dark bg-gray-custom">
        <div class="container-fluid">
           <a class="navbar-brand"  href="${pageContext.request.contextPath}/views/adminHome.jsp">
                <img src="${pageContext.request.contextPath}/img/logo.jpeg" width="70em" height="50em" class="d-inline-block align-top">
                <span class="navbar-brand">E-Tech</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
               <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/views/adminHome.jsp">
                            <i class="bi bi-cart-home"></i> Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/customers">
                            <i class="bi bi-person-fill"></i> Clientes
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/views/adminlogin.jsp">
                            <i class="bi bi-box-arrow-right"></i> Sair
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
	<div class="container-fluid">

		
		<table class="table">

			<tr>
				
				<th scope="col">Nome</th>
				<th scope="col">Email</th>
				<th scope="col">Endereco</th>
				<th scope="col">Apagar</th>
			</tr>
			<tbody>
				<c:forEach var="customer" items="${customers }">
				<tr>
					<td>
						${customer.username}
					</td>
					<td>
					    ${customer.email}
						
					</td>
					<td>
					    ${customer.address}
						
				    </td>
				    <td>
				    
				    	<form action="productslete" method="get">
							<input type="hidden" name="id" value="${prodt.id}">
							<input type="submit" value="Apagar" class="btn btn-danger">
					</form>
				    
				    </td>
					</tr>
                </c:forEach>


				
			</tbody>
		</table>
		
	</div>


 <footer class="footer">
        <p>&copy; 2024 Loja de material informatico.</p>
    </footer>

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
		  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>