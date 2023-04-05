package com.example.lab2_grupo_4.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "proveedores")
public class Proveedores {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idProveedores")
    private int idProveedores;
    @Column(name = "Nombre")
    private String nombre;
    @Column(name = "Telefono")
    private int telefono;
    @Column(name = "Elemento")
    private String elemento;
}
