package com.a3.catalogofilme.repository;

import com.a3.catalogofilme.model.Filme;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Repository responsável pela comunicação com a tabela filmes.
 * O JpaRepository já fornece métodos prontos como findAll, findById, save e deleteById.
 */
public interface FilmeRepository extends JpaRepository<Filme, Integer> {
}
