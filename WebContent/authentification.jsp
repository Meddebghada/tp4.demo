<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session</title>
</head>
<body BGCOLOR="greyel">
<h1>Bienvenue à votre session</h1>
<%if (request.getParameter("prenom").equals("")){ %>
<jsp:useBean id="utilisateur" type="Modele.Authentificationbean" scope="session" />
<h2>Prénom:
<jsp:getProperty name="utilisateur" property="prenom" />
</h2>
<h2>Nom:
<jsp:getProperty name="utilisateur" property="nom" />
</h2>
<%}else{ %>
<h2>Prénom:
<%=request.getParameter("prenom") %>
</h2>
<h2>Nom:
<%=request.getParameter("nom") %>
</h2>
<%} %>
<br><br><br>
<form action="authentification.html">
<input type="submit" value="Retour">
</form>
</body>
</html>