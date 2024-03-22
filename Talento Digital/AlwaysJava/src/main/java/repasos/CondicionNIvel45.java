package repasos;

import java.util.Scanner;

public class CondicionNIvel45 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        // datos 3 nros menores a 10
        int num1, num2, num3;
        System.out.println("Escribe el primer numero");
        num1 = entrada.nextInt();
        System.out.println("Escribe el segundo numero");
        num2 = entrada.nextInt();
        System.out.println("Escribe el tercer numero");
        num3 = entrada.nextInt();

        if(num1<10 || num2<10 || num3<10) {
            System.out.println("algun numero es menor a 10");
        }
    }
}
