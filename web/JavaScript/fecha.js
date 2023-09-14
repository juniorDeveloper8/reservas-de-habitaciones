/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validarFechas() {
    var fechaEntrada = new Date(document.getElementById("fechaEntrada").value);
    var fechaSalida = new Date(document.getElementById("fechaSalida").value);

    if (fechaEntrada >= fechaSalida) {
        alert("La fecha de entrada no puede ser igual o posterior a la fecha de salida.");
        return false; // Evitar que el formulario se envíe
    }

    return true; // Permitir que el formulario se envíe
}