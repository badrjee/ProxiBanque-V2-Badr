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



	<nav class="navbar navbar-inverse navbar-static-top">

	<div class="container-fluid">

		<ul class="nav navbar-left">

			<li role="presentation"><a href="clientsoperations.jsp"><span

					class="glyphicon glyphicon-home" aria-hidden="true"></span> Accueil

					ProxiBanque</a></li>

		</ul>

		<ul class="nav navbar-right">

			<li role="presentation"><a href="LogOutServlet"><span

					class="glyphicon glyphicon-log-out" aria-hidden="true"></span>

					Deconnexion</a></li>

		</ul>

	</div>

	

	<!-- Banner -->

	<div id="banner">

		<h2>Application ProxiBanque</h2>

		<p>

			Modifier profil client

		</p>

		<br>



		<div class="container">

			<form class="form-group row" method="post">

				<input type="hidden" name="idPersonne" value="${client.idPersonne}">

					<label for="nomClient" class="col-sm-2 col-form-label">Nom</label>

					<div class="col-sm-10">

						<input value="${client.nom}" type="text" class="form-control" id="nomClient" name="nomClient"

							placeholder="nom">

				<br>

				</div>

				

				

					<label for="prenomClient" class="col-sm-2 col-form-label">Prénom</label>

					<div class="col-sm-10">

						<input value="${client.prenom}" type="text" class="form-control" id="prenomClient" name="prenomClient"

							placeholder="prenom">

				<br>

				</div>

				

				

					<label for="emailClient" class="col-sm-2 col-form-label">Mail</label>

					<div class="col-sm-10">

						<input value="${client.email}" type="email" class="form-control" id="emailClient" name="emailClient"

							placeholder="mail@domain.com">

				<br>

				</div>

				

				

					<label for="adresseClient" class="col-sm-2 col-form-label">Adresse</label>

					<div class="col-sm-10">

						<input value="${client.adresse.adresse}" type="text" class="form-control" id="adresseClient" name="adresseClient"

							placeholder="ex:13 rue gambetta">

				<br>	

				</div>



				<label for="nomClient" class="col-sm-2 col-form-label">Code postal</label>

					<div class="col-sm-10">

						<input value="${client.adresse.codePostal}" type="text" class="form-control" id="cpClient" name="cpClient"

							placeholder="ex:75000">

				<br>

				</div>

				

				

					<label for="villeClient" class="col-sm-2 col-form-label">ville</label>

					<div class="col-sm-10">

						<input value="${client.adresse.ville}" type="text" class="form-control" id="villeClient" name="villeClient"

							placeholder="ex:Paris">

				<br>	

				</div>

				

				

					<label for="telClient" class="col-sm-2 col-form-label">Téléphone</label>

					<div class="col-sm-10">

						<input value="${client.telephone}" type="tel" pattern="^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,5})|(\(?\d{2,6}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}$" class="form-control" id="telClient" name="telClient"

							placeholder="ex:0612345678">

				<br>	

				</div>

			

				

				<button type="submit" class="btn btn-success btn-lg">Valider</button>

				

			</form>

		</div>

	</div>



		<!-- Section 1  -->

	<div id="one" class="container-fluid">

		<div class="center">

			<h2>Gestion clientèle</h2>

			<p>L'application ProxiBanque vous offre un outil de gestion

				pour répondre aux besoins de vos clients.</p>

			<br>

		</div>

		<div id="div1" class="center col-xs-4">

			<span class="glyphicon glyphicon-refresh"></span>

			<p>Vous permet de mettre à jour les

				informations clients.</p>

		</div>

		<div id="div1" class="center col-xs-4">

			<span class="glyphicon glyphicon-folder-open"></span>

			<p>Vous permet de consulter les comptes

				Courants et Epargnes de vos clients.</p>

		</div>

		<div id="div1" class="center col-xs-4">

			<span class="glyphicon glyphicon-euro"></span>

			<p>Vous permet d'effectuer pour vos

				clients des virements de compte à compte.</p>

		</div>

	</div>

</body>

</body>



	
</html>