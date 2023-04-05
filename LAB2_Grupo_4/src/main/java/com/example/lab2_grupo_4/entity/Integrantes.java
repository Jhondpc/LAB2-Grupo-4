package com.example.lab2_grupo_4.entity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "integrantes")
public class Integrantes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idIntegrantes")
    private int idIntegrantes;
    @Column(name = "Nombre")
    private String nombre;
    @Column(name = "Edad")
    private int edad;
    @Column(name = "Anhios_exp")
    private int anhiosExp;
    @Column(name = "rol")
    private String rol;
    @Column(name = "artistas_idArtistas")
    private int artistasIdArtistas;
}
