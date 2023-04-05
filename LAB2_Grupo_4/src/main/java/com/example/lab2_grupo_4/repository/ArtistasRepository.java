package com.example.lab2_grupo_4.repository;

import com.example.lab2_grupo_4.entity.Artista;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ArtistasRepository extends JpaRepository<Artista,Integer> {
}
