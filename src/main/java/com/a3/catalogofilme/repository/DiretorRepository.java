package com.a3.catalogofilme.repository;

import com.a3.catalogofilme.model.Diretor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DiretorRepository extends JpaRepository<Diretor, Integer> {
}