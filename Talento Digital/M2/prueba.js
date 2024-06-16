var numero = 10;
var antes = 0;
var despues = 0;

antes = ++numero; // cuando está antes se aumenta y se asigna 
console.log(numero, antes);
antes = ++numero;
console.log(numero, antes);
antes = ++numero;
console.log(numero, antes);
antes = ++numero;
console.log(numero, antes);
antes = ++numero;
console.log(numero, antes);
var numero = 10;
despues = numero++; // cuando está despues se asigna y despues se aumenta
console.log(numero, despues);
despues = numero++;
console.log(numero, despues);
despues = numero++;
console.log(numero, despues);
despues = numero++;
console.log(numero, despues);
despues = numero++;
console.log(numero, despues);
var numero = 10;
var incluido = 0;
incluido += numero;
console.log(numero, incluido);
var x = 5;
var y = 2;
x += y -= 9;
console.log(x, y);
console.log("100" + 50)

for (var i = 0; i <= 5; i++){
    console.log(i);
}
for (var i = 0; i <= 5; ++i){
    console.log(i);
}