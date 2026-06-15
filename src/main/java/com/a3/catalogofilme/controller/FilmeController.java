package com.a3.catalogofilme.controller;

import com.a3.catalogofilme.model.Filme;
import com.a3.catalogofilme.service.FilmeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * Controller responsável pelos endpoints da API de filmes.
 * Recebe as requisições HTTP e chama a camada de serviço.
 */
@RestController
@RequestMapping("/filmes")
public class FilmeController {

    private final FilmeService filmeService;

    public FilmeController(FilmeService filmeService) {
        this.filmeService = filmeService;
    }

// Lista todos os filmes cadastrados no banco.    
    @GetMapping
    public List<Filme> listarTodos() {
        return filmeService.listarTodos();
    }

// Busca um filme pelo ID informado na URL.
    @GetMapping("/{id}")
    public ResponseEntity<Filme> buscarPorId(@PathVariable Integer id) {
        return filmeService.BuscarPorId(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

// Cadastra um novo filme usando os dados enviados no corpo da requisição.
    @PostMapping
    public Filme cadastrar(@RequestBody Filme filme) {
        return filmeService.cadastrar(filme);
    }

// Atualiza os dados de um filme existente.
    @PutMapping("/{id}")
    public ResponseEntity<Filme> atualizar(@PathVariable Integer id, @RequestBody Filme filme) {
        return filmeService.atualizar(id, filme)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

// Remove um filme pelo ID informado.
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletar(@PathVariable Integer id) {
        boolean deletado = filmeService.deletar(id);

        if (deletado) {
            return ResponseEntity.noContent().build();
        }

        return ResponseEntity.notFound().build();
    }
}
