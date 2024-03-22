package repasos;

import java.util.Scanner;

public class CondicionalDOble {
    public static void main(String[] args) {
        // crear condicion compuesta con un if y un else
        Scanner entrada = new Scanner(System.in);
        // declarar varios datos
        int num1, num2;
        System.out.println("ingresa primer nro sin decimales");

        num1 = entrada.nextInt();

        System.out.println("ingresa segundo nro sin decimales");
        num2 = entrada.nextInt();

        if (num1>num2) {
            System.out.println(num1 + "es mayor");
        } else {
            System.out.println(num2 + "es mayor");
        }
    }
}
