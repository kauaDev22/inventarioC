package com.example.inventariocnovo.controllers;

import com.example.inventariocnovo.Entidades.Computadores;
import com.example.inventariocnovo.Entidades.Monitores;
import com.example.inventariocnovo.Repositorios.ComputadoresRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/computadores")
public class ComputadoresController {
    @Autowired
    private ComputadoresRepository computadoresRepository;

    @GetMapping
    public Page<Computadores> listar(@RequestParam(defaultValue = "0")int page,
                                     @RequestParam(defaultValue = "10")int size) {
        Pageable pageable = PageRequest.of(page, size);
        return computadoresRepository.findAll(pageable);

    }

    // outros métodos para inserir, atualizar e deletar computadores
    @GetMapping("/{id}")
    public ResponseEntity<Computadores> buscar(@PathVariable Integer id) {
        Optional<Computadores> computadores = computadoresRepository.findById(id);
        if(computadores.isPresent()){
            return ResponseEntity.ok(computadores.get());
        }else {
            return ResponseEntity.notFound().build();
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<Computadores> atualizar(@PathVariable Integer id, @RequestBody Computadores computadorAtualizado) {
        Optional<Computadores> computador = computadoresRepository.findById(id);
        if(computador.isPresent()){
            computadorAtualizado.setComputador_id(id);
            computadoresRepository.save(computadorAtualizado);
            return ResponseEntity.ok(computador.get());
        }else {
            return ResponseEntity.notFound().build();
        }
    }


    @PostMapping
    public Computadores create(@RequestBody Computadores computadores) {
        return computadoresRepository.save(computadores);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletar(@PathVariable Integer id) {
        Optional<Computadores> computador = computadoresRepository.findById(id);
        if (computador.isPresent()) {
            computadoresRepository.delete(computador.get());
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }


}