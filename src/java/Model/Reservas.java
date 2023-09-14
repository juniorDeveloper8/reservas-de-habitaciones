/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author rober
 */
@Entity
@Table(name = "reservas")
public class Reservas implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Basic
    private Date fecha_inicio;
    private Date fecha_fin;

    @JoinColumn
    @OneToOne(cascade = CascadeType.MERGE)
    private Registros registros_id;

    @JoinColumn
    @OneToOne(cascade = CascadeType.MERGE)
    private Habitaciones habitaciones_id;

    

    public Reservas() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(Date fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public Date getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(Date fecha_fin) {
        this.fecha_fin = fecha_fin;
    }

    public Registros getRegistros_id() {
        return registros_id;
    }

    public void setRegistros_id(Registros registros_id) {
        this.registros_id = registros_id;
    }

    public Habitaciones getHabitaciones_id() {
        return habitaciones_id;
    }

    public void setHabitaciones_id(Habitaciones habitaciones_id) {
        this.habitaciones_id = habitaciones_id;
    }


}
