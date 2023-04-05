package com.example.lab2_grupo_4.controller;

import com.example.lab2_grupo_4.entity.Artista;
import com.example.lab2_grupo_4.repository.ArtistasRepository;
import com.example.lab2_grupo_4.repository.ConciertoRepository;
import com.example.lab2_grupo_4.repository.IntegrantesRepository;
import com.example.lab2_grupo_4.repository.ProveedoresRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {
    final ArtistasRepository artistasRepository;
    final ConciertoRepository conciertoRepository;
    final IntegrantesRepository integrantesRepository;
    final ProveedoresRepository proveedoresRepository;

    //Contructor
    public HomeController(ArtistasRepository artistasRepository, ConciertoRepository conciertoRepository, IntegrantesRepository integrantesRepository, ProveedoresRepository proveedoresRepository) {
        this.artistasRepository = artistasRepository;
        this.conciertoRepository = conciertoRepository;
        this.integrantesRepository = integrantesRepository;
        this.proveedoresRepository = proveedoresRepository;
    }
    //#################################################
    @GetMapping("/listaArtistas")
    public String listaArtista(Model model){
        List<Artista> listaArtista = artistasRepository.findAll();
        model.addAttribute("listaArtista", listaArtista);
        return "listaArtista";
    }








}
