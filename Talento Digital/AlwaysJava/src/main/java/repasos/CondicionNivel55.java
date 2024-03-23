package repasos;

import java.util.Scanner;

public class CondicionNivel55 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int x, nIngre, valor, pares, impares;
        x = 1;
        pares = 0;
        impares = 0;


        System.out.println("Ingrese cuantos numeros a ingresar");
        nIngre = entrada.nextInt();

        while (x <= nIngre) {
            System.out.println("Ingrese numero ");
            valor = entrada.nextInt();
            if (valor % 2 == 0) {
                System.out.println("el numero es par");
                pares++;
            } else {
                System.out.println("el numero es impar");
                impares++;
            }
            x++;
        }

        System.out.println("total nros par: " + pares + " total nros impar: " + impares);

    }
}
