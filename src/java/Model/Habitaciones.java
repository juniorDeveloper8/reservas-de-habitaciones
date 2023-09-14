/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author rober
 */
@Entity
@Table(name = "habitaciones")
public class Habitaciones implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Basic
    private int n_camas;
    private int n_adultos;
    private int n_infantes;
    private String tipo;

    public Habitaciones() {
    }

    public Habitaciones(int n_camas, int n_adultos, int n_infantes, String tipo) {
        this.n_camas = n_camas;
        this.n_adultos = n_adultos;
        this.n_infantes = n_infantes;
        this.tipo = tipo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getN_camas() {
        return n_camas;
    }

    public void setN_camas(int n_camas) {
        this.n_camas = n_camas;
    }

    public int getN_adultos() {
        return n_adultos;
    }

    public void setN_adultos(int n_adultos) {
        this.n_adultos = n_adultos;
    }

    public int getN_infantes() {
        return n_infantes;
    }

    public void setN_infantes(int n_infantes) {
        this.n_infantes = n_infantes;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
}