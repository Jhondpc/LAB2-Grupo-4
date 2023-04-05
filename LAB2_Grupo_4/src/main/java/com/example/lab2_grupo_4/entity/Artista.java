package com.example.lab2_grupo_4.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "artistas")
public class Artista {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idArtistas")
    private int idArtistas;

    @Column(name = "Nombre_Grupo")
    private String nombreGrupo;

    @Column(name = "Fecha_creacion")
    private int fechaCreacion;

    @Column(name = "Tipo_musica")
    private String tipoMusica;

}
