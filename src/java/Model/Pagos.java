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
@Table(name = "pagos")
public class Pagos implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Basic
    private Date fecha_p;
    private String numero_tar;
    private String dni;
    private String tipo_pago;
    private int valor;

    @JoinColumn
    @OneToOne(cascade = CascadeType.MERGE)
    private Reservas reservas_id;

    public Pagos() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getFecha_p() {
        return fecha_p;
    }

    public void setFecha_p(Date fecha_p) {
        this.fecha_p = fecha_p;
    }

    public String getNumero_tar() {
        return numero_tar;
    }

    public void setNumero_tar(String numero_tar) {
        this.numero_tar = numero_tar;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getTipo_pago() {
        return tipo_pago;
    }

    public void setTipo_pago(String tipo_pago) {
        this.tipo_pago = tipo_pago;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public Reservas getReservas_id() {
        return reservas_id;
    }

    public void setReservas_id(Reservas reservas_id) {
        this.reservas_id = reservas_id;
    }

}
