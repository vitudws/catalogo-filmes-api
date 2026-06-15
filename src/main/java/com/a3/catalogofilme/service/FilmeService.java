package com.a3.catalogofilme.service;

import com.a3.catalogofilme.model.Filme;
import com.a3.catalogofilme.repository.FilmeRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.List;

/**
 * Camada de serviço da aplicação.
 * Contém as regras principais para listar, cadastrar, atualizar e remover filmes.
 */
@Service
public class FilmeService {

    private final FilmeRepository filmeRepository;

    public FilmeService(FilmeRepository filmeRepository) {
        this.filmeRepository = filmeRepository;
    }

// Retorna todos os filmes salvos no banco.
    public List<Filme> listarTodos() {
        return filmeRepository.findAll();
    }

// Busca um filme específico pelo ID.
    public Optional<Filme> BuscarPorId(Integer id) {
        return filmeRepository.findById(id);
    }

// Salva um novo filme no banco
    public Filme cadastrar(Filme filme) {
        return filmeRepository.save(filme);
    }

// Atualiza apenas se o filme existir no banco.
    public Optional<Filme> atualizar(Integer id, Filme filmeAtualizado) {
            return filmeRepository.findById(id).map(filme -> {
                filme.setTitulo(filmeAtualizado.getTitulo());
                filme.setLancamento(filmeAtualizado.getLancamento());
                filme.setIdDiretor(filmeAtualizado.getIdDiretor());
                filme.setDuracaoMin(filmeAtualizado.getDuracaoMin());
                filme.setClassificacao(filmeAtualizado.getClassificacao());

                return filmeRepository.save(filme);
            });
        }
    
// Verifica se o filme existe antes de remover.
public boolean deletar(Integer id) {
    if (filmeRepository.existsById(id)) {
        filmeRepository.deleteById(id);
        return true;
    }
    return false;
}
}
