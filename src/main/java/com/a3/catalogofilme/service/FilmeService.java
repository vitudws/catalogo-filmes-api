package com.a3.catalogofilme.service;

import com.a3.catalogofilme.dto.FilmeRequest;
import com.a3.catalogofilme.model.Filme;
import com.a3.catalogofilme.model.Genero;
import com.a3.catalogofilme.repository.FilmeRepository;
import com.a3.catalogofilme.repository.GeneroRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;

/**
 * Camada de serviço da aplicação.
 * Contém as regras para listar, buscar, cadastrar, atualizar e remover filmes.
 */
@Service
public class FilmeService {

    private final FilmeRepository filmeRepository;
    private final GeneroRepository generoRepository;

    public FilmeService(FilmeRepository filmeRepository, GeneroRepository generoRepository) {
        this.filmeRepository = filmeRepository;
        this.generoRepository = generoRepository;
    }

    // Retorna todos os filmes cadastrados no banco.
    public List<Filme> listarTodos() {
        return filmeRepository.findAll();
    }

    // Busca um filme pelo ID.
    public Optional<Filme> buscarPorId(Integer id) {
        return filmeRepository.findById(id);
    }

    // Mantém compatibilidade caso o Controller ainda esteja usando BuscarPorId com B maiúsculo.
    public Optional<Filme> BuscarPorId(Integer id) {
        return buscarPorId(id);
    }

    // Cadastra um novo filme e relaciona os gêneros escolhidos.
    public Filme cadastrar(FilmeRequest request) {
        Filme filme = new Filme();

        filme.setTitulo(request.getTitulo());
        filme.setLancamento(request.getLancamento());
        filme.setClassificacao(request.getClassificacao());
        filme.setDuracaoMin(request.getDuracaoMin());
        filme.setIdDiretor(request.getIdDiretor());

        if (request.getGeneroIds() != null && !request.getGeneroIds().isEmpty()) {
            List<Genero> generos = generoRepository.findAllById(request.getGeneroIds());
            filme.setGeneros(new HashSet<>(generos));
        }

        return filmeRepository.save(filme);
    }

    // Atualiza um filme existente e seus gêneros.
    public Optional<Filme> atualizar(Integer id, FilmeRequest request) {
        return filmeRepository.findById(id).map(filme -> {
            filme.setTitulo(request.getTitulo());
            filme.setLancamento(request.getLancamento());
            filme.setClassificacao(request.getClassificacao());
            filme.setDuracaoMin(request.getDuracaoMin());
            filme.setIdDiretor(request.getIdDiretor());

            if (request.getGeneroIds() != null) {
                List<Genero> generos = generoRepository.findAllById(request.getGeneroIds());
                filme.setGeneros(new HashSet<>(generos));
            }

            return filmeRepository.save(filme);
        });
    }

    // Remove um filme pelo ID.
    @Transactional
    public boolean deletar(Integer id) {
        Optional<Filme> filmeOptional = filmeRepository.findById(id);

        if (filmeOptional.isEmpty()) {
            return false;
        }

        Filme filme = filmeOptional.get();

        // Limpa a relação com gêneros antes de remover o filme.
        filme.getGeneros().clear();

        filmeRepository.delete(filme);
        return true;
    }
}