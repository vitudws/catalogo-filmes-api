package com.a3.catalogofilme.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Filme {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String titulo;
    private String genero;
    private int anoLancamento;
    private String diretor;
    private String duracao;
    private String classificacao;
}



// Exemplo de JSON para cadastro ou atualização de um filme:

//"titulo": "Interestelar",
//"genero": "Ficção Científica",
//"ano": 2014,
//"diretor": "Christopher Nolan",
//"duracao": 169,
//"classificacao": "10 anos"