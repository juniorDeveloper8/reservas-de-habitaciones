/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


document.getElementById("tarjeta").addEventListener("input", function () {
    const tarjetaInput = document.getElementById("tarjeta");
    const tarjetaMensaje = document.getElementById("tarjetaMensaje");
    const tarjetaValue = tarjetaInput.value.replace(/\D/g, ""); // Eliminar caracteres no numéricos

    if (/^4\d{0,15}$/.test(tarjetaValue)) {
        tarjetaMensaje.textContent = "Visa";
    } else if (/^5[1-5]\d{0,14}$/.test(tarjetaValue)) {
        tarjetaMensaje.textContent = "Mastercard";
    } else {
        tarjetaMensaje.textContent = "";
    }
});