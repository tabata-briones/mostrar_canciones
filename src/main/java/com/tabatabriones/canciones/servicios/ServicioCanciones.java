package com.tabatabriones.canciones.servicios;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tabatabriones.canciones.modelos.Cancion;
import com.tabatabriones.canciones.repositorios.RepositorioCanciones;

@Service
public class ServicioCanciones {
    @Autowired
    private final RepositorioCanciones repositorioCanciones;

    public ServicioCanciones(RepositorioCanciones repositorioCanciones){
        this.repositorioCanciones = repositorioCanciones;
    }

    public List<Cancion> obtenerTodos(){
        return this.repositorioCanciones.findAll();
    }

    public Cancion obtenerUno(Long idLibro){
        return this.repositorioCanciones.findById(idLibro).orElse(null);
    }

    public Cancion agregarCancion(Cancion cancion) {
       	return this.repositorioCanciones.save(cancion);
   	}
}