package com.example.inventariocnovo.Entidades;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Computadores {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int computador_id;
    private String computador_modelo;
    private int patrimonio;

    public int getComputador_id() {
        return computador_id;
    }

    public void setComputador_id(int computador_id) {
        this.computador_id = computador_id;
    }

    public String getComputador_modelo() {
        return computador_modelo;
    }

    public void setComputador_modelo(String computador_modelo) {
        this.computador_modelo = computador_modelo;
    }

    public int getPatrimonio() {
        return patrimonio;
    }

    public void setPatrimonio(int patrimonio) {
        this.patrimonio = patrimonio;
    }
    // getters e setters
}