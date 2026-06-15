package com.a3.catalogofilme.controller;

import com.a3.catalogofilme.model.Genero;
import com.a3.catalogofilme.repository.GeneroRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/generos")
public class GeneroController {

    private final GeneroRepository generoRepository;

    public GeneroController(GeneroRepository generoRepository) {
        this.generoRepository = generoRepository;
    }

    // Lista todos os gêneros cadastrados no banco.
    @GetMapping
    public List<Genero> listarTodos() {
        return generoRepository.findAll();
    }
}