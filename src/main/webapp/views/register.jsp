<!doctype html>
<html lang="pt" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="Projeto para Gerenciamento de alunos">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Lato|Noto+Sans+JP|Open+Sans|Roboto&display=swap" rel="stylesheet">
    <title>Cadastro</title>
    <style>
        body {
            font-family: 'Lato', sans-serif;
        }
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
        .login {
            position: relative;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-form {
            
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .main-div {
            text-align: center;
        }
        .main-div h2 {
            margin-bottom: 20px;
            color: #343a40;
        }
        .main-div p {
            margin-bottom: 20px;
            color: #6c757d;
        }
        .input-group-text {
            background: #007bff;
            color: #fff;
            border: none;
        }
        .form-control {
            color: #000;
        }
        .btnConfirm {
            width: 100%;
            background: #007bff;
            color: #fff;
            border: none;
            margin-top: 20px;
        }
        .back {
            margin-top: 10px;
        }
        .back a {
            color: #007bff;
        }
       
    </style>
</head>
<body>

<div class="slideshow">
    <img src="${pageContext.request.contextPath}/img/slide4.jpeg" class="active">
    <img src="${pageContext.request.contextPath}/img/slide4.jpeg">
    
</div>

<div class="container-fluid">
    <section class="login">
        <section class="login-form">
            <div class="containerAux">
                <div class="main-div">
                    <div class="painel">
                        <h2>Cadastro de Usuário</h2>
                        <p>Realize o seu cadastro, para que possa ter acesso ao sistema!</p>
                    </div>
                    <form action="newuserregister" method="post">
                        <div class="form-group">
                            <label for="firstName">Nome do usuário</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1"><i class="fas fa-user"></i></span>
                                </div>
                                <input type="text" name="username" id="firstName" required placeholder="Seu nome de usuário" class="form-control form-control-lg">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1"><i class="fas fa-envelope"></i></span>
                                </div>
                                <input type="email" class="form-control form-control-lg" required minlength="6" placeholder="Email*" name="email" id="email" aria-describedby="emailHelp">
                            </div>
                            <small id="emailHelp" class="form-text text-muted">Nunca partilhe este email</small>
                        </div>
                        <div class="form-group">
                            <label for="password">Senha</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" class="form-control form-control-lg" required placeholder="Senha*" name="password" id="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Address">Endereço</label>
                            <textarea class="form-control form-control-lg" rows="3" placeholder="Digite o seu endereço" name="address"></textarea>
                        </div>
                        <span>Já possui uma conta? <a href="/" class="back">Login Aqui</a></span>
                        <button type="submit" class="btn btn-primary btnConfirm">Cadastrar</button>
                        <h3 style="color:red;">${msg}</h3>
                    </form>
                </div>
            </div>
        </section>
    </section>
</div>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script> (function() {
        const images = document.querySelectorAll('.slideshow img');
        let current = 0;

        function changeImage() {
            images[current].classList.remove('active');
            current = (current + 1) % images.length;
            images[current].classList.add('active');
        }

        setInterval(changeImage, 500); // change image every 3 seconds
    })();</script>
</body>
</html>
