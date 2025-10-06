<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
    <head>
        <title>Agregar Canción</title>
    </head>
    <body>
        <h2>Agregar Canción</h2>

        <form:form modelAttribute="cancion" method="POST" action="${pageContext.request.contextPath}/canciones/procesa/agregar">

            <div>
                <form:label path="titulo">Título:</form:label>
                <form:input path="titulo" />
                <form:errors path="titulo" cssClass="error" />
            </div>

            <div>
                <form:label path="artista">Artista:</form:label>
                <form:input path="artista" />
                <form:errors path="artista" cssClass="error" />
            </div>

            <div>
                <form:label path="album">Álbum:</form:label>
                <form:input path="album" />
                <form:errors path="album" cssClass="error" />
            </div>

            <div>
                <form:label path="genero">Género:</form:label>
                <form:input path="genero" />
                <form:errors path="genero" cssClass="error" />
            </div>

            <div>
                <form:label path="idioma">Idioma:</form:label>
                <form:input path="idioma" />
                <form:errors path="idioma" cssClass="error" />
            </div>

            <div>
                <input type="submit" value="Agregar Canción" />
            </div>

        </form:form>

        <a href="${pageContext.request.contextPath}/canciones">Volver a lista de canciones</a>
    </body>
</html>