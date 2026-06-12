package com.a3.catalogofilme.repository;

import com.a3.catalogofilme.model.Filme;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FilmeRepository extends JpaRepository<Filme, Long> {
}
