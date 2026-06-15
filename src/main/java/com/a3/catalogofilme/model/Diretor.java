package com.a3.catalogofilme.model;

import jakarta.persistence.*;
/**
 
Entidade que representa a tabela diretor do banco de dados.*/
@Entity     
@Table(name = "diretor")

public class Diretor {
    // Chave primária da tabela diretor.
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_diretor")
    private Integer idDiretor;

    // Nome do diretor.
    @Column(name = "nome_diretor")
    private String nomeDiretor;

    public Integer getIdDiretor() {
        return idDiretor;
    }

    public void setIdDiretor(Integer idDiretor) {
        this.idDiretor = idDiretor;
    }

    public String getNome() {
        return nomeDiretor;
    }

    public void setNome(String nomeDiretor) {
        this.nomeDiretor = nomeDiretor;
    }
    
}
