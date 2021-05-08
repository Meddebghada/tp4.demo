<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session</title>
</head>
<body BGCOLOR="blanc9">
<h4>client créé avec succée !</h4>
<%if (request.getParameter("prenom").equals("")){ %>
<jsp:useBean id="client" type="Modele.ClientBean" scope="session" />
<h2>Prénom:
<jsp:getProperty name="client" property="prenom" />
</h2>
<h2>Nom:
<jsp:getProperty name="client" property="nom" />
</h2>
<h2>Adresse:
<jsp:getProperty name="client" property="adresse" />
</h2>
<h2>Numero de tel:
<jsp:getProperty name="client" property="tel" />
</h2>
<h2>Adresse Email:
<jsp:getProperty name="client" property="email" />
</h2>
<%}else{ %>
<h2>Prénom:
<%=request.getParameter("prenom") %>
</h2>
<h2>Nom:
<%=request.getParameter("nom") %>
</h2>
<h2>Adresse:
<%=request.getParameter("adresse") %>
</h2>
<h2>Num Tel:
<%=request.getParameter("tel") %>
</h2>
<h2>Email:
<%=request.getParameter("email") %>
</h2>
<%} %>
<br><br><br>
<form action="Client.html">
<input type="submit" value="Retour">
</form>
</body>
</html>