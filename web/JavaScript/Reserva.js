/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


// Obtén una referencia al formulario
    const formulario = document.getElementById('formularioReserva');

    // Obtén una referencia al botón de apertura del modal
    const openModalButton = document.getElementById('openReservaModal');

    // Agrega un evento para manejar el clic en el botón de apertura del modal
    openModalButton.addEventListener('click', function () {
        // Recopila los datos del formulario
        const fechaEntrada = document.getElementById('fechaEntrada').value;
        const fechaSalida = document.getElementById('fechaSalida').value;
        const tipoHabitacion = document.getElementById('tipoHabitacion').value;
        const cantidadAdultos = document.getElementById('cantidadAdultos').value;
        const cantidadNinos = document.getElementById('cantidadNinos').value;
        const cantidadCamas = document.getElementById('cantidadCamas').value;

        // Construye un mensaje con los detalles de la reserva
        const mensaje = `
            <p>Fecha de Entrada: ${fechaEntrada}</p>
            <p>Fecha de Salida: ${fechaSalida}</p>
            <p>Tipo de Habitación: ${tipoHabitacion}</p>
            <p>Cantidad de Adultos: ${cantidadAdultos}</p>
            <p>Cantidad de Niños: ${cantidadNinos}</p>
            <p>Cantidad de Camas: ${cantidadCamas}</p>
        `;

        // Inserta el mensaje en el modal
        const modalBody = document.querySelector('.modal-body');
        modalBody.innerHTML = mensaje;

        // Abre el modal
        $('#reservaModal').modal('show');
    });

    // Agrega un evento para manejar el clic en el botón "Confirmar Reserva" dentro del modal
    const confirmarReservaButton = document.getElementById('confirmarReserva');
    confirmarReservaButton.addEventListener('click', function () {
        // Envía el formulario
        formulario.submit();
    });
