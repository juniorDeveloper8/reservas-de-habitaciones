/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.sql.Date;

/**
 *
 * @author rober
 */
public class ReservaDTO {
    private int id;
    private Date fechaInicio;
    private Date fechaFin;
    private String tipoHabitacion;
    private String numeroTarjeta;
    private int valor;

    // Agrega getters y setters

    // Constructor
    public ReservaDTO(int id, Date fechaInicio, Date fechaFin, String tipoHabitacion, String numeroTarjeta, int valor) {
        this.id = id;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.tipoHabitacion = tipoHabitacion;
        this.numeroTarjeta = numeroTarjeta;
        this.valor = valor;
    }
}
