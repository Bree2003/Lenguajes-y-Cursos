package repasos;

import java.util.Scanner;

public class ejercicioFInal {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        // dolares, euros, pesos chilenos
        int cuenta;
        float saldo, suma;
        suma = 0;

        // condicion
        do {
            System.out.println("Ingresar el nro de la cuenta");
            cuenta = entrada.nextInt();
            if(cuenta > 0) {
                System.out.println("Ingrese Saldo:");
                saldo = entrada.nextFloat();
                if(saldo> 0) {
                    System.out.println("Tienes saldo en tu cuenta");
                    suma += saldo;
                } else if (saldo < 0){
                    System.out.println("le debes al banco");
                } else {
                    System.out.println("estas pato");
                }
            }
        } while (cuenta >= 0);
        System.out.println("tienes dinero");
        System.out.println(suma
        );
    }
}
