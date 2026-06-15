package com.a3.catalogofilme.controller;

import com.a3.catalogofilme.model.Diretor;
import com.a3.catalogofilme.repository.DiretorRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Controller responsável por listar os diretores cadastrados no banco.
 */
@RestController
@RequestMapping("/diretores")
public class DiretorController {

    private final DiretorRepository diretorRepository;

    public DiretorController(DiretorRepository diretorRepository) {
        this.diretorRepository = diretorRepository;
    }

    @GetMapping
    public List<Diretor> listarTodos() {
        return diretorRepository.findAll();
    }
}