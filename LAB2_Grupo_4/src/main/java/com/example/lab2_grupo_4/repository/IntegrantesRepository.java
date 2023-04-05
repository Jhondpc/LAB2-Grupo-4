package com.example.lab2_grupo_4.repository;

import com.example.lab2_grupo_4.entity.Integrantes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IntegrantesRepository extends JpaRepository<Integrantes,Integer> {
}
