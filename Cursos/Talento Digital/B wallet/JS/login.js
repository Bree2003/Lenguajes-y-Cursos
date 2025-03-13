console.log("Si funciona");

const formulario = document.querySelector("#formulario");
const btnEnviar = document.querySelector("#btnEnviar");
const btnCargando = document.querySelector("#btnCargando");

formulario.addEventListener("submit", (e) => {
    btnEnviar.classList.add("d-none");
    btnCargando.classList.remove("d-none");

    e.preventDefault();
    const datos = new FormData(formulario);
    console.log("email: ", datos.get("campoEmail"));
    console.log("password: ", datos.get("campoPassword"));
    console.log("aceptar: ", datos.get("campoAceptar"));

    //Enviar los datos al backend

    //simulación de carga

    Window.setTimeout(() => {
        btnEnviar.classList.remove("d-none");
        btnCargando.classList.add("d-none");
    }, 1000);
});
