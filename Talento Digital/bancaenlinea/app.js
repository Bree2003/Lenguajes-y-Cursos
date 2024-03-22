// //Obtener los valores del html
// function calcularPrestamo(){
//     const monto = document.getElementById("monto").value;
//     const interes = document.getElementById("interes").value;
//     const plazo = document.getElementById("plazo").value;
// //Calcular el pago mensual
// const pagoMensual = (monto * interes * plazo) / (12 * 100);
// //Mostrar el resultado en el div
// const resultadoDiv = document.getElementById("resultado");
// resultadoDiv.innerHTML = `El pago mensual del préstamo es: $ ${pagoMensual.toFixed(2)}`;
// return false;
// }

//Obtener los valores del html
function calcularPrestamo() {
    $(document).ready(function (event) {
        event.preventDefault();
    $("#calcularPrestamo").click(function(){

    const monto = $("#monto").val();
    const interes = $("#interes").val();
    const plazo = $("#plazo").val();
//calculo del prestamo
        const costoTotal = monto * (1 + interes * plazo / 100);

// mostrar
$("#resultado").html(`El costo es : $${costoTotal.toFixed(2)} `);


});

});
}

