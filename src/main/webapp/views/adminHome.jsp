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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
  
<title>Home</title>
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
 background-image: url('${pageContext.request.contextPath}/img/findex.jpeg');
            background-size: cover; /* Para cobrir todo o elemento h1 com a imagem */
          
            padding: 20px; /* Espaçamento interno */
            text-align: center; /* Alinhamento do texto */
}
* {box-sizing:border-box}

/* Slideshow container */
.slideshow-container {
  max-width: 100%;
  position: relative;
  margin: auto;

}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

/*Animacao do h1*/
#animated-text {
    font-size: 2em;
    font-family: Arial, sans-serif;
    border-right: 2px solid black;
    white-space: nowrap;
    overflow: hidden;
}

    </style>
      
</head>

<body >
	<!-- Navbar -->
	
	 <nav class="navbar navbar-expand-lg  bg-gray-custom">
  
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
	

		<!-- Slideshow container -->
<div class="slideshow-container">
<div class=" text-center">
	<h1 id="animated-text" >Loja de Material Informatico <i class="bi bi-cart-fill"></i>  </h1>
</div>
  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">

      <img src="${pageContext.request.contextPath}/img/slide1.jpeg" style="width:100%; height: 30em;">

  </div>

  <div class="mySlides fade">
   
<img src="${pageContext.request.contextPath}/img/slide2.jpeg" style="width:100%; height: 30em;">

  </div>

  <div class="mySlides fade">
    
    <img src="${pageContext.request.contextPath}/img/slide4.jpeg" style="width:100%; height: 30em;">
   
  </div>
  
    <div class="mySlides fade">

    <img src="${pageContext.request.contextPath}/img/slide5.jpeg" style="width:100%; height: 30em;">

  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>



<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>
	</div><br>	

	<div class="container-fluid" >
		<div class="row justify-content-center">
			<div class="col-sm-3 pt-4">
				<div class="card border border-info" style="background-color: rgb(226, 223, 223);">
					<div class="card-body text-center">
						<h4 class="card-title">Categorias</h4>
						<p>---------------------------------------------</p>
						<p class="card-text">Administracao de categorias</p>
						<a href="/admin/categories" class="card-link btn btn-primary">Administrar</a>

					</div>
				</div>
			</div>
			<div class="col-sm-3 pt-4">
				<div class="card" style="background-color: rgb(226, 223, 223);">
					<div class="card-body text-center">
						<h4 class="card-title">Produtos</h4>
						<p>---------------------------------------------</p>
						<p class="card-text">Administracao de produtos</p>
						<a href="/admin/products" class="card-link btn btn-primary">Administrar</a>

					</div>
				</div>
			</div>
			<div class="col-sm-3 pt-4">
				<div class="card" style="background-color: rgb(226, 223, 223);">
					<div class="card-body text-center">
						<h4 class="card-title">Clientes</h4>
						<p>---------------------------------------------</p>
						<p class="card-text">Administracao dos clientes</p>
						<a href="/admin/customers" class="card-link btn btn-primary">Administrar</a>

					</div>
				</div>
			</div>
			
			
			
		</div>
	</div>

<!-- Footer -->
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
		
	<script src="/js/js.js" ></script>	
</body>
</html>