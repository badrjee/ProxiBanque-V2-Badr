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

	</nav>

	<!-- Banner -->

	<div id="banner">

		

	</tbody>

	

		<h2>Application ProxiBanque </h2>

		<p>Bienvenue dans votre espace ProxiBanque</p>

		<br>

	

	<!-- Liste des clients du conseiller -->

 	<div class="panel panel-default">

 		<div class="panel-heading">Liste des clients </div>

 		<table class="table">

		  <thead>

		    <tr>

		      <th>ID</th>

		      <th>Nom</th>

		      <th>Prénom</th>

		      <th>Mail</th>

		    </tr>

		  </thead>

		  <tbody>

		 	<c:forEach var="client" items="${listeClient}">
				<tr>
					<td scope="row"><c:out value="${client.idPersonne}"/></td>

		     	 	<td><c:out value="${client.nom}"/></td>

		      		<td><c:out value="${client.prenom}"/></td>

		      		<td><c:out value="${client.email}"/></td>

				</tr>

			</c:forEach>

		  </tbody>

		</table>

	</div>

	<c:url value="/" var="chemin" />

	<br>

		<form action="${chemin}modifier" method="post" class="form-inline form-group container">

   				<label for="idClient">ID Client </label>

   				<select class="form-control" name="idClient" id="idClient">

			    	<c:forEach var="client" items="${listeClient}">

							<option value="${client.idPersonne}"><c:out value="${client.idPersonne}"/></option>

					</c:forEach>

			    </select>

				<button name="but" type="submit" class="btn btn-success"> Modifier profil Client  </button>

 		</form>

 		

 		<br>



		<form action="${chemin}consulter" method="post" class="form-inline form-group container">

   				<label for="idClient2">ID Client </label>

   				<select class="form-control" name="idClient" id="idClient2">

			    	<c:forEach var="client" items="${listeClient}">

							<option value="${client.idPersonne}"><c:out value="${client.idPersonne}"/></option>

					</c:forEach>

			    </select>

				<button type="submit" class="btn btn-success">Consulter Compte</button>

 		</form>

 		

 		<br>

		<form action="${chemin}virement" method="get" class="form-inline form-group container">

				<button type="submit" class="btn btn-success">Effectuer Virement</button>

 		</form>



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