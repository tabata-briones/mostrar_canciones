<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Canciones </title>
    </head>
    <body>
        <h1> Lista de canciones </h1>
        <div class="lista-canciones">
        <c:forEach var="cancion" items="${listaCanciones}">
            <h2> ${cancion.titulo} </h2>
            <p> Artista: ${cancion.artista} </p>
            <a href="/canciones/detalle/${cancion.id}">
                <button class="btn btn-secondary" type="button">Detalle</button>
            </a>
                    </form>
        </c:forEach>
        </div>
        <div>
        <form action="${pageContext.request.contextPath}/canciones/formulario/agregar" method="get">
            <button type="submit">Agregar Canción</button>
        </form>
        </div>
    </body>
</html>