package repasos;

import java.util.Scanner;

public class condicionNivel56 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int mul3, mul5, valor;
        mul3 = 0;
        mul5 = 0;

        for (int i = 1; i <= 10; i++) {
            System.out.println("ingrese un numero:");
            valor = entrada.nextInt();
            if(valor % 3 == 0) {
                mul3++;
            } else if (valor % 5 == 0) {
                mul5++;
            } else {
                System.out.println("no es mul de 3 o 5");
            }
        }
        System.out.println("cantidad mul3: "+ mul3 + " cantidad mul5: " + mul5);
    }

}
