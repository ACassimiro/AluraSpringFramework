<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="entrada" var="linkEntradaUnica"/>
<c:url value="entrada" var="linkServletMostraEmpresa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>

		<c:import url="logout-parcial.jsp"/>
		
	    Usuario Logado: ${usuarioLogado.login }
		
		<c:if test="${not empty empresa}">
			Empresa ${ empresa } cadastrada com sucesso!
			<br /><br />
		</c:if>
		
		Lista de empresas: <br />

		<ul>
			<c:forEach items="${empresas}" var="empresa">
				<li>
					${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>
					<a href="${linkEntradaUnica}?acao=RemoveEmpresa&id=${empresa.id}">remove</a>
					<a href="${linkEntradaUnica}?acao=MostraEmpresa&id=${empresa.id}">edita</a>
				</li>			
			</c:forEach>
		</ul>
		
</body>
</html>