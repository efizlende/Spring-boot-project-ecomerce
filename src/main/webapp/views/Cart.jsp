<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Carrinho de Compras</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
   
</head>
 <style>
  
  /* Estilos personalizados para o carrinho de compras */
body {
  background-color: #f8f9fa;
  font-family: 'Arial', sans-serif;
}

.card {
  border-radius: 10px;
  overflow: hidden;
}

.table th, .table td {
  vertical-align: middle;
}

.table-hover tbody tr:hover {
  background-color: #f1f1f1;
}

.card-header {
  border-bottom: none;
}

.card-body {
  padding: 2rem;
}

.table th {
  border-top: none;
}

.table td {
  border-top: none;
}

.table-hover tbody tr:hover td {
  background-color: #f9f9f9;
}
  
      .bg-gray-custom {
            background-color: rgb(132, 132, 248); 
            color:  white;
        }
       



/* Estilos para o rodapé */
.footer {
    background-color: rgb(226, 223, 223);

    bottom: 0;
    width: 100%;
    text-align: center;
    padding: 10px 0;
   
    margin-top: 10em;
    
}
h1{
 
          color: white;
            padding: 20px; /* Espaçamento interno */
            text-align: center; /* Alinhamento do texto */
}
/*Slide background*/
 .slideshow {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: -1;
        }
        .slideshow img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            position: absolute;
            opacity: 0;
            transition: opacity 1s ease-in-out;
        }
        .slideshow img.active {
            opacity: 1;
        }
/*Animacao do h1*/
#animated-text {
    font-size: 2em;
    font-family: Arial, sans-serif;
    border-right: 2px solid black;
    white-space: nowrap;
    overflow: hidden;
}

#animated-text {
    font-size: 2em;
    font-family: Arial, sans-serif;
    border-right: 2px solid black;
    white-space: nowrap;
    overflow: hidden;
}

  
  
  </style>
<body>

<nav class="navbar navbar-expand-lg bg-gray-custom">
  <div class="container-fluid">
    <a class="navbar-brand" href="${pageContext.request.contextPath}/views/index.jsp">
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
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/views/Cart.jsp">
            <i class="bi bi-cart-fill"></i> Carrinho
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/views/perfil_user.jsp">
            <i class="bi bi-person-fill"></i> Perfil
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/logout">
            <i class="bi bi-box-arrow-right"></i> Sair
          </a>
        </li>
      </ul>
    </div>
  </div>
</nav>

  <div class="container mt-5">
   <div class="slideshow">
    <img src="${pageContext.request.contextPath}/img/slide4.jpeg" class="active">

    </div>
    <div class="card shadow-lg">
      <div class="card-header bg-primary text-white">
        <h2 class="mb-0">Carrinho de Compras</h2>
      </div>
      <div class="card-body">
        <table class="table table-hover">
          <thead class="thead-dark">
            <tr>
              <th>Produto</th>
              <th>Preço</th>
              <th>Quantidade</th>
              <th>Total</th>
              <th>Ação</th>
            </tr>
          </thead>
          <tbody id="cart-items">
            <c:forEach var="item" items="${cartItems}">
              <tr data-id="${item.id}">
                <td>${item.name}</td>
                <td>R$ ${item.price}</td>
                <td>
                  <input type="number" class="form-control quantity" value="${item.quantity}" min="1">
                </td>
                <td class="item-total">R$ ${item.price * item.quantity}</td>
                <td>
                  <button class="btn btn-danger btn-sm delete-item">Apagar</button>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
        <div class="text-right mt-4">
          <h4>Total: <span id="cart-total">MT
            <c:out value="${cartTotal}" />
          </span></h4>
        </div>
        <div class="text-right">
          <button class="btn btn-success">Finalizar Compra</button>
        </div>
      </div>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="app.js">
  
  $(document).ready(function() {
	  // Função para atualizar o total do carrinho
	  function updateCartTotal() {
	    let total = 0;
	    $('#cart-items tr').each(function() {
	      const quantity = $(this).find('.quantity').val();
	      const price = parseFloat($(this).find('td:eq(1)').text().replace('R$', ''));
	      const itemTotal = quantity * price;
	      $(this).find('.item-total').text(`R$ ${itemTotal.toFixed(2)}`);
	      total += itemTotal;
	    });
	    $('#cart-total').text(`R$ ${total.toFixed(2)}`);
	  }

	  // Atualizar total ao alterar a quantidade
	  $('#cart-items').on('change', '.quantity', function() {
	    updateCartTotal();
	  });

	  // Apagar um item do carrinho
	  $('#cart-items').on('click', '.delete-item', function() {
	    $(this).closest('tr').remove();
	    updateCartTotal();
	  });
	});
  
  


  </script>
  
 
</body>
</html>
