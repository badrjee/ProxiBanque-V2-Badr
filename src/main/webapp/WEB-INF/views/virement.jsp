<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ProxyBanque</title>
<link rel="stylesheet"
	href="<c:url value = "/css/bootstrap.min.css"></c:url>">
<link rel="stylesheet" href="<c:url value = "/css/style.css"></c:url>">
<script src="<c:url value = "/js/bootstrap.min.js"></c:url>"></script>
</head>
<body>



	<nav class="navbar navbar-inverse navbar-static-top">

		<div class="container-fluid">

			<ul class="nav navbar-left">

				<li role="presentation"><a href="clientsoperations.jsp"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>
						Accueil ProxiBanque</a></li>

			</ul>

			<ul class="nav navbar-right">

				<li role="presentation"><a href="LogOutServlet"><span
						class="glyphicon glyphicon-log-out" aria-hidden="true"></span>

						Deconnexion</a></li>

			</ul>

		</div>

	</nav>

	<!-- Banner -->

	<div id="banner">

		<h2>Application ProxiBanque</h2>

		<p>

			Bienvenue

			<c:out value="${conseillerClientele.nom}" />

			dans votre espace ProxiBanque

		</p>

		<br>



		<!-- Liste de tous les comptes -->

		<div class="panel panel-default">


			<div class="panel-body">

				<table class="table">

					<thead>

						<tr>

							<th>Numero de compte</th>

							<th>Type de compte</th>

							<th>Date d'ouveture</th>

							<th>Solde</th>

						</tr>

					</thead>

					<tbody>

						<c:forEach var="compte" items="${listeCompte}">

							<tr>

								<th><c:out value="${compte.numeroDeCompte}" /></th>

								<th><c:out value="${compte.typeDeCompte}" /></th>

								<th><c:out value="${compte.dateOuvertureCompte}" /></th>

								<th><c:out value="${compte.solde} Euro" /></th>
								
							</tr>

						</c:forEach>

					</tbody>

				</table>

			</div>

		</div>



		<br> <br>



		<div class="container">





			<form  method="post">



				<div class="form-group">

					<label for="compteDebiteur">Id compte à débiter</label> <select
						class="form-control" id="compteDebiteur" name="compteDebiteur">

						<c:forEach var="compte" items="${listeCompte}">

							<option><c:out value="${compte.numeroDeCompte}" /></option>

						</c:forEach>

					</select>

				</div>

				<br>



				<div class="form-group row">

					<label for="compteCrediteur">Id compte à créditer</label> <select
						class="form-control" id="compteCrediteur" name="compteCrediteur">

						<c:forEach var="Compte" items="${listeCompte}">

							<option><c:out value="${Compte.numeroDeCompte}" /></option>

						</c:forEach>

					</select>

				</div>

				<br> <label class="sr-only" for="montantVirement">Montant
					(en Euros)</label>

				<div class="input-group">

					<div class="input-group-addon">€</div>

					<input type="number" class="form-control" id="montantVirement"
						name="montantVirement" placeholder="montant">

					<div class="input-group-addon">.00</div>

				</div>

				<br>

				<button type="submit" class="btn btn-success">Confirmer
					Virement</button>



			</form>



		</div>





		<!-- Section 1  -->

		<section id="one" class="container-fluid">

			<div class="center">

				<h2>Gestion clientèle</h2>

				<p>L'application ProxiBanque vous offre un outil de gestion pour
					répondre aux besoins de vos clients.</p>

				<br>

			</div>

			<div id="div1" class="center col-xs-4">

				<span class="glyphicon glyphicon-refresh"></span>

				<p>Vous permet de mettre à jour les informations clients.</p>

			</div>

			<div id="div1" class="center col-xs-4">

				<span class="glyphicon glyphicon-folder-open"></span>

				<p>Vous permet de consulter les comptes Courants et Epargnes de
					vos clients.</p>

			</div>

			<div id="div1" class="center col-xs-4">

				<span class="glyphicon glyphicon-euro"></span>

				<p>Vous permet d'effectuer pour vos clients des virements de
					compte à compte.</p>

			</div>
	</div>

</body>

</body>
</html>