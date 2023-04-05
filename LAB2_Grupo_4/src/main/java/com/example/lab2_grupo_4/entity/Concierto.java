package com.example.lab2_grupo_4.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "concierto")
public class Concierto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idConcierto")
    private int idConcierto;
    @Column(name = "Fecha_evento")
    private String fechaEvento;
    @Column(name = "proveedores_idProveedores")
    private int proveedoresIdProveedores;

    @Column(name = "artistas_idArtistas")
    private int artistasIdArtistas;
}
