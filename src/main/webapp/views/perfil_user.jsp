<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil do Usuário</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <style>
        .profile-container {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .profile-avatar {
            display: block;
            margin: 0 auto 20px;
            width: 120px;
            height: 120px;
            border-radius: 50%;
        }
        .profile-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-header h2 {
            margin: 0;
            font-size: 24px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="profile-container bg-light">
            <div class="profile-header">
                <img src="${pageContext.request.contextPath}/img/avatar.png" alt="Avatar" class="profile-avatar">
                <h2>Perfil do Usuário</h2>
            </div>
            <div class="card-body">
                <form action="${pageContext.request.contextPath}/updateProfile" method="post">
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" value="${email}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="address">Endereço:</label>
                        <input type="text" class="form-control" id="address" name="address" value="${address}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="username">Nome de Usuário:</label>
                        <input type="text" class="form-control" id="username" name="username" value="${username}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="role">Função:</label>
                        <input type="text" class="form-control" id="role" name="role" value="${role}" readonly>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
