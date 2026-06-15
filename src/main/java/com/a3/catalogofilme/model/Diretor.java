package com.a3.catalogofilme.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;

/**
 * Entidade que representa a tabela diretor do banco de dados.
 */
@Entity
@Table(name = "diretor")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Diretor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_diretor")
    private Integer idDiretor;

    @Column(name = "nome_diretor")
    private String nomeDiretor;

    public Integer getIdDiretor() {
        return idDiretor;
    }

    public void setIdDiretor(Integer idDiretor) {
        this.idDiretor = idDiretor;
    }

    public String getNomeDiretor() {
        return nomeDiretor;
    }

    public void setNomeDiretor(String nomeDiretor) {
        this.nomeDiretor = nomeDiretor;
    }
}