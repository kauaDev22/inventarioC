package com.example.inventariocnovo.Repositorios;

import com.example.inventariocnovo.Entidades.ItensDiversos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ItensDiversosRepository extends JpaRepository<ItensDiversos, Integer> {
}
