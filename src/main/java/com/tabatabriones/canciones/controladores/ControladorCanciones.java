package com.tabatabriones.canciones.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.tabatabriones.canciones.modelos.Cancion;
import com.tabatabriones.canciones.servicios.ServicioCanciones;

@Controller
public class ControladorCanciones {

    @Autowired
    private final ServicioCanciones servicioCanciones;

    public ControladorCanciones(ServicioCanciones servicioCanciones){
        this.servicioCanciones = servicioCanciones;
    }

    @GetMapping("/canciones")
    public String canciones(Model model){
        List<Cancion>listaCanciones = this.servicioCanciones.obtenerTodos();
        model.addAttribute("listaCanciones", listaCanciones);
        return "canciones";
    }

    @GetMapping("/canciones/detalle/{id}")
    public String detalleCancion(@PathVariable Long id, Model model) {
    Cancion cancion = servicioCanciones.obtenerUno(id);
    model.addAttribute("cancion", cancion);
    return "detalleCancion";
    }
}