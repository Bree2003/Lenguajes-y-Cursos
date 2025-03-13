package repasos;

import java.util.Scanner;

public class CondicionalNivel4 {
    public static void main(String[] args) {
        // datos
        int num1, num2, num3;
        // capturar datos
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingrese primer numero");
        num1 = entrada.nextInt();
        System.out.println("Ingrese segundo numero");
        num2 = entrada.nextInt();
        System.out.println("Ingrese tercer numero");
        num3 = entrada.nextInt();

        // condiciones
        if (num1>num2 && num1>num3) {
            System.out.println("El numero mayor es: " + num1);
        } else if (num2>num3) {
            System.out.println("El numero mayor es : " + num2);
        } else  {
            System.out.println("El numero mayor es: " + num2);
        }
    }
}
