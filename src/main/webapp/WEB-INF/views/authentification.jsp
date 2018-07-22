<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ProxyBanque</title>
<link rel="stylesheet" href="<c:url value = "/css/bootstrap.min.css"></c:url>">
<link rel="stylesheet" href="<c:url value = "/css/style.css"></c:url>">
<script src="<c:url value = "/js/bootstrap.min.js"></c:url>"></script>
</head>
<body>
	<!-- Banner -->
	<section id="banner">
		<h2>Application ProxyBanque</h2>
		<p>Bienvenue sur l'application ProxyBanque , votre outil de gestion clientèle</p> <br>
		<form method="post" class="form-inline">
			<label for="login">Login </label>
			<div class="form-group">
				<input type="text" class="form-control" id="login" name="login" placeholder="Conseiller">
			</div>
			<label for="password"> Mot de passe </label>
			<div class="form-group">
				<input type="password" class="form-control" id="pwd" name="pwd" placeholder="********">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-success btn-lg">Espace Conseiller</button>
			</div>
		</form>
	</section>

	<!-- Section 1  -->
	<div id="one" class="container-fluid">
		<div class="center">
			<h2>Gestion clientèle</h2>
			<p>L'application ProxiBanque vous offre un outil de gestion pour répondre aux besoins de vos clients.</p>
			<br>
		</div>
		<div id="div1" class="center col-xs-4">
			<span class="glyphicon glyphicon-refresh"></span>
			<p>Vous permet de mettre à jour les informations clients.</p>
		</div>
		<div id="div1" class="center col-xs-4">
			<span class="glyphicon glyphicon-folder-open"></span>
			<p>Vous permet de consulter les comptes Courants et Epargnes de vos clients.</p>
		</div>
		<div id="div1" class="center col-xs-4">
			<span class="glyphicon glyphicon-euro"></span>
			<p>Vous permet d'effectuer pour vos clients des virements de compte à compte.</p>
		</div>
		</section>
</body>
</html>