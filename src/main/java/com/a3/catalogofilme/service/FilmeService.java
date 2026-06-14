package com.a3.catalogofilme.service;

import com.a3.catalogofilme.model.Filme;
import com.a3.catalogofilme.repository.FilmeRepository;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.List;

@Service
public class FilmeService {

    private final FilmeRepository filmeRepository;

    public FilmeService(FilmeRepository filmeRepository) {
        this.filmeRepository = filmeRepository;
    }

    public List<Filme> listarTodos() {
        return filmeRepository.findAll();
    }

    public Optional<Filme> BuscarPorId(Long id) {
        return filmeRepository.findById(id);
    }

    public Filme cadastrar(Filme filme) {
        return filmeRepository.save(filme);
    }

    public Optional<Filme> atualizar(Long id, Filme filmeAtualizado) {
            return filmeRepository.findById(id).map(filme -> {
                filme.setTitulo(filmeAtualizado.getTitulo());
                filme.setLancamento(filmeAtualizado.getLancamento());
                filme.setIdDiretor(filmeAtualizado.getIdDiretor());
                filme.setDuracaoMin(filmeAtualizado.getDuracaoMin());
                filme.setClassificacao(filmeAtualizado.getClassificacao());

                return filmeRepository.save(filme);
            });
        }
public boolean deletar(Long id) {
    if (filmeRepository.existsById(id)) {
        filmeRepository.deleteById(id);
        return true;
    }
    return false;
}
}