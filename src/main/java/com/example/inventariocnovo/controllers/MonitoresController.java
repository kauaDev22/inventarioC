package com.example.inventariocnovo.controllers;

import com.example.inventariocnovo.Entidades.Monitores;
import com.example.inventariocnovo.Repositorios.MonitoresRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/monitores")
public class MonitoresController {
    @Autowired
    private MonitoresRepository monitoresRepository;

    @GetMapping
    public Page<Monitores> listar(@RequestParam(defaultValue = "0") int page,
                                  @RequestParam(defaultValue = "10") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return monitoresRepository.findAll(pageable);
    }

    // outros métodos para inserir, atualizar e deletar monitores

    @PostMapping
    public Monitores adicionar(@RequestBody Monitores novoMonitor) {
        return monitoresRepository.save(novoMonitor);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Monitores> buscarPorId(@PathVariable Integer id) {
        Optional<Monitores> monitor = monitoresRepository.findById(id);
        if (monitor.isPresent()) {
            return ResponseEntity.ok(monitor.get());
        } else {
                return ResponseEntity.notFound().build();
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<Monitores> atualizar(@PathVariable Integer id, @RequestBody Monitores monitorAtualizado) {
        Optional<Monitores> monitor = monitoresRepository.findById(id);
        if (monitor.isPresent()) {
            monitorAtualizado.setMonitor_id(id);
            monitoresRepository.save(monitorAtualizado);
            return ResponseEntity.ok(monitorAtualizado);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletar(@PathVariable Integer id) {
        Optional<Monitores> monitor = monitoresRepository.findById(id);
        if (monitor.isPresent()) {
            monitoresRepository.delete(monitor.get());
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }


}