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
        <div class="container">
            <div class="row">
                <h1 class="col-8"> Detalle de la cancion: ${cancion.titulo}</h1>
            </div>
            <div class="row">
                <div class="col-6 tarjeta-libro">
                    <p> Artista: ${cancion.artista} </p>
                    <p> Album: ${cancion.album} </p>
                    <p> Género: ${cancion.genero} </p>
                    <p> Idioma: ${cancion.idioma} </p>
                </div>
            </div>
        </div>
        <nav class="col-4">
                    <form method="GET" action="/canciones">
                        <button class="btn btn-primary">
                            Lista de libros
                        </button>
                    </form>
        </nav>
    </body>
</html>