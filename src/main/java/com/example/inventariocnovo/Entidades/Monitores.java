package com.example.inventariocnovo.Entidades;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Monitores {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int monitor_id;
    private String monitor_modelo;
    private int patrimonio;

    public int getMonitor_id() {
        return monitor_id;
    }

    public void setMonitor_id(int monitor_id) {
        this.monitor_id = monitor_id;
    }

    public String getMonitor_modelo() {
        return monitor_modelo;
    }

    public void setMonitor_modelo(String monitor_modelo) {
        this.monitor_modelo = monitor_modelo;
    }

    public int getPatrimonio() {
        return patrimonio;
    }

    public void setPatrimonio(int patrimonio) {
        this.patrimonio = patrimonio;
    }
}