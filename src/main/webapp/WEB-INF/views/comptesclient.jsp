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
						Accueil ProxyBanque</a></li>

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

		<h2>Application ProxyBanque</h2>

		<p>Bienvenue dans votre espace ProxyBanque</p>

		<br>



		<!-- Liste des comptes du client -->

		<div class="panel panel-default">

			<div class="panel-heading">

				Liste des comptes de:

				<c:out value="${client.prenom}" />

				<c:out value="${client.nom}" />

			</div>

			<div class="panel-body">

				<table class="table">


					<tbody>

						<tr>
							<th>Date d'Ouverture</th>

							<th>Numero de compte</th>

							<th>Type de compte</th>

							<th>Decouvert</th>

							<th>Taux</th>

							<th>Solde</th>

						</tr>
					</thead>

					<tbody>

						<c:forEach var="compte" items="${client.comptes}">

							<tr>

								<th><c:out value="${compte.dateOuvertureCompte}" /></th>

								<th><c:out value="${compte.numeroDeCompte}" /></th>

								<td>${compte.getClass().getSimpleName()}</td>

								<c:choose>
									<c:when
										test="${compte.getClass().getSimpleName() == 'CompteCourant'}">
										<td>${compte.decouvert}</td>
									</c:when>
									<c:otherwise>
										<td>--</td>
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when
										test="${compte.getClass().getSimpleName() == 'CompteEpargne'}">
										<td>${compte.taux}</td>
									</c:when>
									<c:otherwise>
										<td>--</td>
									</c:otherwise>
								</c:choose>

								<th><c:out value="${compte.solde} Euro" /></th>

							</tr>

						</c:forEach>


					</tbody>
				</table>

			</div>

		</div>



		<br>

	</div>





	<!-- Section 1  -->

	<div id="one" class="container-fluid">

		<div class="center">

			<h2>Gestion clientèle</h2>

			<p>L'application ProxyBanque vous offre un outil de gestion pour
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
