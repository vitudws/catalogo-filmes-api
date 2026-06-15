package com.a3.catalogofilme.repository;

import com.a3.catalogofilme.model.Genero;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GeneroRepository extends JpaRepository<Genero, Integer> {
}