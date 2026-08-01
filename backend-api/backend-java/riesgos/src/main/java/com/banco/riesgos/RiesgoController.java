package com.banco.riesgos;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/riesgos")
public class RiesgoController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @PutMapping("/actualizar")
    public String actualizarRiesgo(@RequestParam int clienteId, @RequestParam double tasa) {
        String sql = "UPDATE SolicitudesCredito SET TasaMorosidadProbable = ?, EstadoSAP = 'Evaluado por IA' WHERE ClienteID = ?";
        int filas = jdbcTemplate.update(sql, tasa, clienteId);
        return filas > 0 ? "Riesgo bancario actualizado con éxito por la celda de IA." : "Cliente no encontrado.";
    }
}
