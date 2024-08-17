<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="pt" xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
   
</head>
<style>
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

  <!-- Navbar -->
	
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
          <a class="nav-link" href="${pageContext.request.contextPath}/views/index.jsp">
            <i class="bi bi-person-home"></i> HOME
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/views/Cart.jsp">
            <i class="bi bi-cart-fill"></i> Carrinho
          </a>
        </li>
      
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/views/userLogin.jsp">
            <i class="bi bi-box-arrow-right"></i> Sair
          </a>
        </li>
      </ul>
    </div>
  </div>
</nav>
	
	
  <main>

    <div class="container">
    <div class="slideshow">
    <img src="${pageContext.request.contextPath}/img/slide4.jpeg" class="active">
    <img src="${pageContext.request.contextPath}/img/slide7.jpeg">
    </div>
      <h1 id="animated-text"  >Loja de material informatico</h1>


      <div class="row">
      <c:forEach var="product" items="${products}">
        <div class="col-md-3">
          <div class="card mb-4">
            <img class="card-img-top" src="${product.image}"  style="height: 9em; " alt="Product 1">
            <div class="card-body">
             <b> <h4 class="card-title">${product.name}</h4></b>
              <h5 class="card-text">Categoria: ${product.category.name}</h5>
              <h5 class="card-text">Preco: ${product.price}MT</h5>
              <p class="card-text">Descricao: ${product.description}</p>
     <a href="<c:url value='/{cartId}/add' />" class="btn btn-primary">Adicionar ao carrinho</a>
     
            </div>
          </div>
        </div> </c:forEach>
      </div>

    </div>
  </main>
  <footer >
   
<!-- Footer -->
 <footer class="footer">
        <p>&copy; 2024 Loja de material informatico.</p>
    </footer>
   <script>
    (function() {
        const images = document.querySelectorAll('.slideshow img');
        let current = 0;

        function changeImage() {
            images[current].classList.remove('active');
            current = (current + 1) % images.length;
            images[current].classList.add('active');
        }

        setInterval(changeImage, 4000); // change image every 3 seconds
    })();
    
  //Animacao do h1
    document.addEventListener('DOMContentLoaded', (event) => {
      const phrases = ["Seja bem Vindo!", "A loja de venda de material informatico", "Aqui encontras todo material informatico que precisa!", "A sua satisfacao e o nosso foco" ];
      const speed = 15; // Velocidade de digitação em ms
      const eraseSpeed = 50; // Velocidade de apagar em ms
      const delayBetweenPhrases = 2000; // Delay entre frases em ms

      let textElement = document.getElementById('animated-text');
      let phraseIndex = 0;
      let letterIndex = 0;
      let isDeleting = false;

      function type() {
          let currentPhrase = phrases[phraseIndex];
          let displayedText = currentPhrase.substring(0, letterIndex);

          textElement.textContent = displayedText;

          if (!isDeleting && letterIndex < currentPhrase.length) {
              letterIndex++;
              setTimeout(type, speed);
          } else if (isDeleting && letterIndex > 0) {
              letterIndex--;
              setTimeout(type, eraseSpeed);
          } else if (!isDeleting && letterIndex === currentPhrase.length) {
              setTimeout(() => isDeleting = true, delayBetweenPhrases);
              setTimeout(type, eraseSpeed);
          } else if (isDeleting && letterIndex === 0) {
              isDeleting = false;
              phraseIndex = (phraseIndex + 1) % phrases.length;
              setTimeout(type, speed);
          }
      }

      type();
  });




</script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>