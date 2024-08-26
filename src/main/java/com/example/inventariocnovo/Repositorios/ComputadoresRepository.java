package com.example.inventariocnovo.Repositorios;

import com.example.inventariocnovo.Entidades.Computadores;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ComputadoresRepository extends JpaRepository<Computadores, Integer> {
}
