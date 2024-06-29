// Metodos string 
const texto = 'Hola mundo';
const mayusculas = texto.toUpperCase();
const palabras = texto.split('');
const reemplazo = texto.replace('Hola', 'Saludos');
console.log(mayusculas, palabras, reemplazo);

// Metodos array
const numeros = [1, 2, 3, 4, 5];
numeros.push(6);
// agrega un elemento al final
const dobles = numeros.map(numero => numero * 2);
// Multiplica cada elemento por 2
console.log(numeros, dobles);