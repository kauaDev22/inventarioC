package com.example.inventariocnovo.Repositorios;

import com.example.inventariocnovo.Entidades.Computadores;
import com.example.inventariocnovo.Entidades.ItensDiversos;
import com.example.inventariocnovo.Entidades.Monitores;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;

@Repository
public interface MonitoresRepository extends JpaRepository<Monitores, Integer> {
}

