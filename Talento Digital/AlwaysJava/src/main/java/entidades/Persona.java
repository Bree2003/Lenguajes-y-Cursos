package entidades;

import java.util.Scanner;

public class Persona {
    //variable (datos)
    private Scanner teclado;
    private String nombre;
    private int edad;

    // ingreso de esos datos

    public void ingresoDatos() {
        teclado = new Scanner(System.in);
        System.out.println("Ingrese nombre:");
        nombre = teclado.next();

        System.out.println("Ingrese edad:");
        edad = teclado.nextInt();
    }

    public void mostrarIngresos() {
        System.out.println("Su nombre es: " + nombre);
        System.out.println("Su edad es: " + edad);
    }

    // condicion
    public void mayorEdad() {
        if(edad >= 18) {
            System.out.println("Es mayor de edad, puede salir de noche");
        } else {
            System.out.println("Es menor de edad, no puede salir de noche");
        }
    }
        public static void main(String[] args) {
            Persona personaA;
            personaA = new Persona();
            personaA.ingresoDatos();
            personaA.mostrarIngresos();
            personaA.mayorEdad();
        }


}
