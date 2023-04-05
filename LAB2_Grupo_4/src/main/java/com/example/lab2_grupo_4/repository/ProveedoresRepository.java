package com.example.lab2_grupo_4.repository;

import com.example.lab2_grupo_4.entity.Proveedores;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProveedoresRepository extends JpaRepository<Proveedores,Integer> {
}
