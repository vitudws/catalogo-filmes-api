package com.a3.catalogofilme.dto;

import java.time.LocalDate;
import java.util.List;

public class FilmeRequest {

    private String titulo;
    private LocalDate lancamento;
    private String classificacao;
    private Integer duracaoMin;
    private Integer idDiretor;
    private List<Integer> generoIds;

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public LocalDate getLancamento() {
        return lancamento;
    }

    public void setLancamento(LocalDate lancamento) {
        this.lancamento = lancamento;
    }

    public String getClassificacao() {
        return classificacao;
    }

    public void setClassificacao(String classificacao) {
        this.classificacao = classificacao;
    }

    public Integer getDuracaoMin() {
        return duracaoMin;
    }

    public void setDuracaoMin(Integer duracaoMin) {
        this.duracaoMin = duracaoMin;
    }

    public Integer getIdDiretor() {
        return idDiretor;
    }

    public void setIdDiretor(Integer idDiretor) {
        this.idDiretor = idDiretor;
    }

    public List<Integer> getGeneroIds() {
        return generoIds;
    }

    public void setGeneroIds(List<Integer> generoIds) {
        this.generoIds = generoIds;
    }
}