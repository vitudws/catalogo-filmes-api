package com.a3.catalogofilme.model;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

/**
 * Entidade que representa a tabela filmes do banco de dados.
 * Cada atributo está ligado a uma coluna da tabela.
 */
@Entity
@Table(name = "filmes")
public class Filme {

    // Chave primária da tabela filmes.
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_filme")
    private Integer idFilme;

    // Título do filme.
    @Column(name = "titulo")
    private String titulo;

    // Data de lançamento do filme.
    @Column(name = "lancamento")
    private LocalDate lancamento;

    // Classificação indicativa do filme.
    @Column(name = "classificacao")
    private String classificacao;

    // Duração do filme em minutos.
    @Column(name = "duracao_min")
    private Integer duracaoMin;

    // ID do diretor relacionado ao filme.
    @Column(name = "id_diretor")
    private Integer idDiretor;
    // Relação entre filme e diretor. Um filme tem um diretor.
    @ManyToOne 
    @JoinColumn(name = "id_diretor", insertable = false, updatable = false)
    private Diretor diretor;
    // Relação muitos-para-muitos entre filmes e gêneros.
    // A tabela genero_filme liga id_filme com id_genero.
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
            name = "genero_filme",
            joinColumns = @JoinColumn(name = "id_filme"),
            inverseJoinColumns = @JoinColumn(name = "id_genero")
    )
    private Set<Genero> generos = new HashSet<>();

    public Integer getIdFilme() {
        return idFilme;
    }

    public void setIdFilme(Integer idFilme) {
        this.idFilme = idFilme;
    }

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
    public Diretor getDiretor() {
        return diretor;
    }

    public void setDiretor(Diretor diretor) {
        this.diretor = diretor;
    }

    public Set<Genero> getGeneros() {
        return generos;
    }

    public void setGeneros(Set<Genero> generos) {
        this.generos = generos;
    }
}