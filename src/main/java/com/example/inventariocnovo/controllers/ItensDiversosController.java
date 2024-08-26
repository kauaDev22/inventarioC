package com.example.inventariocnovo.controllers;

import com.example.inventariocnovo.Entidades.Computadores;
import com.example.inventariocnovo.Entidades.ItensDiversos;
import com.example.inventariocnovo.Entidades.Monitores;
import com.example.inventariocnovo.Repositorios.ItensDiversosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/itens_diversos")
public class ItensDiversosController {
    @Autowired
    private ItensDiversosRepository itensDiversosRepository;

    @GetMapping
    public Page<ItensDiversos> listar(@RequestParam(defaultValue = "0")int page,
                                     @RequestParam(defaultValue = "10")int size) {
        Pageable pageable = PageRequest.of(page, size);
        return itensDiversosRepository.findAll(pageable);

    }

    // outros métodos para inserir, atualizar e deletar itens diversos

    @GetMapping("/{id}")
    public ResponseEntity<ItensDiversos> buscarPorId(@PathVariable Integer id) {
        Optional<ItensDiversos> item = itensDiversosRepository.findById(id);
        if (item.isPresent()) {
            return ResponseEntity.ok(item.get());
        }else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    public ItensDiversos salvar(@RequestBody ItensDiversos itensDiversos) {
       return itensDiversosRepository.save(itensDiversos);

    }

    @PutMapping("/{id}")
    public ResponseEntity<ItensDiversos> atualizar(@PathVariable Integer id, @RequestBody ItensDiversos itensDiversosAtualizado) {
        Optional<ItensDiversos> item = itensDiversosRepository.findById(id);
        if (item.isPresent()) {
            itensDiversosAtualizado.setItem_id(id);
            itensDiversosRepository.save(itensDiversosAtualizado);
            return ResponseEntity.ok(itensDiversosAtualizado);
        }else{
            return ResponseEntity.notFound().build();
        }
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletar(@PathVariable Integer id) {
        Optional<ItensDiversos> itemDiverso = itensDiversosRepository.findById(id);
        if (itemDiverso.isPresent()) {
            itensDiversosRepository.delete(itemDiverso.get());
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}