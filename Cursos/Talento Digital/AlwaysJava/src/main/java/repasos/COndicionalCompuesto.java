package repasos;

import java.util.Scanner;

public class COndicionalCompuesto {
    public static void main(String[] args) {
        // condicionales nivel 3
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese primera nota");
        float nota1, nota2, nota3;
        nota1 = entrada.nextFloat();
        System.out.println("Ingrese segunda nota");
        nota2 = entrada.nextFloat();
        System.out.println("Ingrese tercera nota");
        nota3 = entrada.nextFloat();

        // operacion y decisiones que tomara nuestro codigo
        float promedio = (nota1 + nota2 + nota3) / 3;
        if(promedio >= 7) {
            System.out.println("Promocionado" + promedio);
        } else if (promedio >= 4) {
            System.out.println("Regular" + promedio);
        } else {
            System.out.println("Reprobado" + promedio);
        }
    }
}
